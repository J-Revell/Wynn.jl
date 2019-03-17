# Wynn.jl
A package to facilitate the calculation of epsilon (<img src="/tex/7ccca27b5ccc533a2dd72dc6fa28ed84.svg?invert_in_darkmode&sanitize=true" align=middle width=6.672392099999992pt height=14.15524440000002pt/>) table structures, derived from Wynn's recursive epsilon algorithm.

Suppose we are presented with a series, <img src="/tex/e257acd1ccbe7fcb654708f1a866bfe9.svg?invert_in_darkmode&sanitize=true" align=middle width=11.027402099999989pt height=22.465723500000017pt/>, with partial sums <img src="/tex/d28140eda2d12e24b434e011b930fa23.svg?invert_in_darkmode&sanitize=true" align=middle width=14.730823799999989pt height=22.465723500000017pt/>, 

<img src="/tex/305b00052b0f637b1f6b9cbbc20b6bd4.svg?invert_in_darkmode&sanitize=true" align=middle width=81.79511999999998pt height=56.32434059999998pt/>.


Wynn's epsilon algorithm computes the following recursive scheme:
<img src="/tex/b4e0ec3b26fc563e0ed93910d7e0c216.svg?invert_in_darkmode&sanitize=true" align=middle width=298.57868204999994pt height=43.42856099999997pt/>,

where

<img src="/tex/207a4d937a3c920d74c18cb14811970c.svg?invert_in_darkmode&sanitize=true" align=middle width=79.03346054999999pt height=24.65753399999998pt/>, for <img src="/tex/cb64b662810fa2e879c6c890c2c20026.svg?invert_in_darkmode&sanitize=true" align=middle width=93.33412439999998pt height=21.68300969999999pt/>

<img src="/tex/efb514c886a1edd953f62e3c64752b1d.svg?invert_in_darkmode&sanitize=true" align=middle width=82.79584334999998pt height=24.65753399999998pt/>, for <img src="/tex/cb64b662810fa2e879c6c890c2c20026.svg?invert_in_darkmode&sanitize=true" align=middle width=93.33412439999998pt height=21.68300969999999pt/>

<img src="/tex/0f1e19b8023600ed9036bd1af5957893.svg?invert_in_darkmode&sanitize=true" align=middle width=107.1804756pt height=24.65753399999998pt/>, for <img src="/tex/bfd898f3193f13c76d64173d28ac7a86.svg?invert_in_darkmode&sanitize=true" align=middle width=95.38131569999997pt height=21.68300969999999pt/>


The resulting table of <img src="/tex/e0bccba5f61931c93bf2b42a9648d584.svg?invert_in_darkmode&sanitize=true" align=middle width=41.936949449999986pt height=24.65753399999998pt/> values is known as the epsilon table.

Epsilon table values with an even <img src="/tex/36b5afebdba34564d884d347484ac0c7.svg?invert_in_darkmode&sanitize=true" align=middle width=7.710416999999989pt height=21.68300969999999pt/>-th index, i.e. <img src="/tex/89db79db8572b902d7f043db0510df7b.svg?invert_in_darkmode&sanitize=true" align=middle width=48.48949214999999pt height=24.65753399999998pt/>, are commonly used to compute rational sequence transformations and extrapolations, such as Shank's Transforms, and Pade Approximants.


# Example usage: computing the epsilon table for exp(x)
The first 5 terms of the Taylor series expansion for <img src="/tex/559b96359a4653a6c35dbf27c11f68d2.svg?invert_in_darkmode&sanitize=true" align=middle width=47.29464134999999pt height=24.65753399999998pt/> are <img src="/tex/41e09bf50da4c9ca2b1058d7e114f8ce.svg?invert_in_darkmode&sanitize=true" align=middle width=259.77142785pt height=26.76175259999998pt/>. The epsilon table can be generated in the manner below:

```julia
using SymPy
using Wynn
# or, if not registered with package repository
# using .Wynn

@syms x
# first 5 terms of the Taylor series expansion of exp(x)
s = [1, x, x^2/2, x^3/6, x^4/24]

etable = EpsilonTable(s).etable
```
## Further usage: computing the R[2/2] Pade Approximant of exp(x)
Suppose we wanted to approximate <img src="/tex/a0778bdbc13bc2aad11315b4a51d2516.svg?invert_in_darkmode&sanitize=true" align=middle width=47.500114199999985pt height=24.65753399999998pt/> (around <img src="/tex/8436d02a042a1eec745015a5801fc1a0.svg?invert_in_darkmode&sanitize=true" align=middle width=39.53182859999999pt height=21.18721440000001pt/>) using a rational Pade Approximant <img src="/tex/8a9e0cd4c218dbb2d9e4be213d6f108e.svg?invert_in_darkmode&sanitize=true" align=middle width=49.62157199999999pt height=24.65753399999998pt/>. The pade approximant <img src="/tex/8a9e0cd4c218dbb2d9e4be213d6f108e.svg?invert_in_darkmode&sanitize=true" align=middle width=49.62157199999999pt height=24.65753399999998pt/> is known to correspond to the epsilon table value <img src="/tex/0bd4baf96622bc8dbc8d32d4a6932886.svg?invert_in_darkmode&sanitize=true" align=middle width=106.49968725pt height=24.65753399999998pt/>. Computing the R[2/2] Pade approximant is thus equivalent to
```julia
R = etable[0,4]
```
which yields

<img src="/tex/ed18bf83d30c6c5a437c246a3a87a143.svg?invert_in_darkmode&sanitize=true" align=middle width=183.47364255pt height=49.00309590000003pt/>

Comparing accuracy:

<img src="/tex/d2fbc056b13622350cd02c9958eac4e3.svg?invert_in_darkmode&sanitize=true" align=middle width=266.4162303pt height=24.65753399999998pt/> (Native Julia function)

<img src="/tex/66bb64ee3ff869914cef0896cc993d3d.svg?invert_in_darkmode&sanitize=true" align=middle width=181.80402239999998pt height=24.65753399999998pt/> (First 5 terms of Taylor series)

<img src="/tex/d48b838db5a410155b0c788e01c2e6ea.svg?invert_in_darkmode&sanitize=true" align=middle width=162.38046659999998pt height=22.465723500000017pt/> (Pade R[2/2] approximation)

It can be seen that as x moves away from 0, the Pade approximant is more accurate than the corresponding Taylor series.
