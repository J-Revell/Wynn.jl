module Wynn
    using SymPy

    # data structure to store the epsilon table
    # ϵ_ij indexed by ints i & j, stored within dict.
    struct EpsilonTable
        etable::Dict{Tuple{Int64,Int64}, Sym}
    end

    function EpsilonTable(series::Vector{Sym}; simplified::Bool = true)
        # maximum occuring i & j index, minus 1 for nonzero julia indexing
        max_ind = length(series) - 1

        # setting base case j = -1
        etable = Dict((i, -1) => Sym(0) for i in 0:max_ind)

        # setting base case j = 0, i = 0:max_ind
        merge!(etable, Dict((i, 0) => sum(series[1:i+1]) for i in 0:max_ind))

        # setting base case i = -j-1, j even
        merge!(etable, Dict((-j-1, 2j) => Sym(0) for j in 0:max_ind/2))

        # recursive calculations, j>=1, i = 0:max_ind-j
        for j in 1:max_ind, i in -floor(Int,(j+1)/2):max_ind-j
            ϵ_ij = etable[i+1, j-2] + 1 / (etable[i+1, j-1] - etable[i, j-1])
            simplified ? push!(etable, (i, j) => simplify(ϵ_ij)) : push!(etable, (i, j) => ϵ_ij)
        end
        EpsilonTable(etable)
    end

    export EpsilonTable
end
