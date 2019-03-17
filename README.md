# Wynn.jl
A package to facilitate the calculation of epsilon ($\epsilon$) table structures, derived from Wynn's recursive epsilon algorithm.

Suppose we are presented with a series, $S$, with partial sums $S_i$,
$\displaystyle S_i = \sum_{n=0}^i a_n$.

Wynn's epsilon algorithm computes the following recursive scheme:
$\displaystyle \epsilon_{j+1}(S_i) = \epsilon_{j-1}(S_{i+1}) + \frac{1}{\epsilon_j(S_{i+1}) - \epsilon_j(S_{i})}$,
where
$\epsilon_{0}(S_i) = S_i$, for $i=0,1,2,\ldots$
$\epsilon_{-1}(S_i) = 0$, for $i=0,1,2,\ldots$
$\epsilon_{-j-1}(S_{2j}) = 0$, for $j=0,1,2,\ldots$

The resulting table of $\epsilon_i(S_{j})$ values is known as the epsilon table.

Epsilon table values with an even $j$-th index, i.e. $\epsilon_i(S_{2j})$, are commonly used to compute rational sequence transformations and extrapolations, such as Shank's Transforms, and Pade Approximants.
