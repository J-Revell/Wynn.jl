# Wynn.jl
A package to facilitate the calculation of epsilon (<img src="/tex/7ccca27b5ccc533a2dd72dc6fa28ed84.svg?invert_in_darkmode&sanitize=true" align=middle width=6.672392099999992pt height=14.15524440000002pt/>) table structures, derived from Wynn's recursive epsilon algorithm.

Suppose we are presented with a series, <img src="/tex/e257acd1ccbe7fcb654708f1a866bfe9.svg?invert_in_darkmode&sanitize=true" align=middle width=11.027402099999989pt height=22.465723500000017pt/>, with partial sums <img src="/tex/d28140eda2d12e24b434e011b930fa23.svg?invert_in_darkmode&sanitize=true" align=middle width=14.730823799999989pt height=22.465723500000017pt/>, 

<img src="/tex/305b00052b0f637b1f6b9cbbc20b6bd4.svg?invert_in_darkmode&sanitize=true" align=middle width=81.79511999999998pt height=56.32434059999998pt/>.


Wynn's epsilon algorithm computes the following recursive scheme:
<img src="/tex/b4e0ec3b26fc563e0ed93910d7e0c216.svg?invert_in_darkmode&sanitize=true" align=middle width=298.57868204999994pt height=43.42856099999997pt/>,

where

<img src="/tex/207a4d937a3c920d74c18cb14811970c.svg?invert_in_darkmode&sanitize=true" align=middle width=79.03346054999999pt height=24.65753399999998pt/>, for <img src="/tex/cb64b662810fa2e879c6c890c2c20026.svg?invert_in_darkmode&sanitize=true" align=middle width=93.33412439999998pt height=21.68300969999999pt/>

\epsilon_{-1}(S_i) = 0<img src="/tex/fea4f8635469062c84ebc8d7d5f0bb7a.svg?invert_in_darkmode&sanitize=true" align=middle width=32.96430224999999pt height=22.831056599999986pt/>i=0,1,2,\ldots<img src="/tex/51709c221bb606c7f0a6193f462db8dd.svg?invert_in_darkmode&sanitize=true" align=middle width=8.21920935pt height=14.15524440000002pt/>\epsilon_{-j-1}(S_{2j}) = 0<img src="/tex/fea4f8635469062c84ebc8d7d5f0bb7a.svg?invert_in_darkmode&sanitize=true" align=middle width=32.96430224999999pt height=22.831056599999986pt/>j=0,1,2,\ldots<img src="/tex/d5cf143df993b2d404d557939bbbbcf7.svg?invert_in_darkmode&sanitize=true" align=middle width=145.25155425pt height=45.84475499999998pt/>\epsilon_i(S_{j})<img src="/tex/df260b206c614ea3a1a166b086e7d694.svg?invert_in_darkmode&sanitize=true" align=middle width=240.54336899999998pt height=45.84475500000001pt/>j<img src="/tex/17be0bdb4799c42d58d5c3ab178f785a.svg?invert_in_darkmode&sanitize=true" align=middle width=99.08353289999998pt height=22.831056599999986pt/>\epsilon_i(S_{2j})$, are commonly used to compute rational sequence transformations and extrapolations, such as Shank's Transforms, and Pade Approximants.
