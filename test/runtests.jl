using Wynn
using SymPy
using Test

@syms x
s = [1, x, x^2/2, x^3/6, x^4/24]
etable = EpsilonTable(s).etable

@testset "Exponential EpsilonTable" begin
    @test etable[0,-1] == 0
    @test etable[1,-1] == 0
    @test etable[2,-1] == 0
    @test etable[3,-1] == 0
    @test etable[4,-1] == 0
    @test etable[-1,2] == -1/(x-1)
    @test etable[0,0]  == 1
    @test etable[1,0]  == 1+x
    @test etable[4,0]  == 1 + x + x^2/2 + x^3/6 + x^4/24
    @test etable[-2,4] == 2 / (x^2 - 2*x + 2)
    @test etable[0,4]  == (x^2 + 6*x + 12) / (x^2 -6*x + 12)
    @test etable[1,2]  == simplify(-(x^2 + 4*x + 6)/(2*x - 6))
    @test etable[-3,4] == 0
    @test etable[-1,0] == 0
end
