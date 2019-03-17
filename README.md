# Wynn.jl
A package to facilitate the calculation of epsilon (<img src="/tex/7ccca27b5ccc533a2dd72dc6fa28ed84.svg?invert_in_darkmode&sanitize=true" align=middle width=6.672392099999992pt height=14.15524440000002pt/>) table structures, derived from Wynn's recursive epsilon algorithm.

Suppose we are presented with a series, <img src="/tex/e257acd1ccbe7fcb654708f1a866bfe9.svg?invert_in_darkmode&sanitize=true" align=middle width=11.027402099999989pt height=22.465723500000017pt/>, with partial sums <img src="/tex/d28140eda2d12e24b434e011b930fa23.svg?invert_in_darkmode&sanitize=true" align=middle width=14.730823799999989pt height=22.465723500000017pt/>, <img src="/tex/305b00052b0f637b1f6b9cbbc20b6bd4.svg?invert_in_darkmode&sanitize=true" align=middle width=81.79511999999998pt height=56.32434059999998pt/>.

Wynn's epsilon algorithm computes the following recursive scheme:
<img src="/tex/b4e0ec3b26fc563e0ed93910d7e0c216.svg?invert_in_darkmode&sanitize=true" align=middle width=298.57868204999994pt height=43.42856099999997pt/>,
where
<img src="/tex/207a4d937a3c920d74c18cb14811970c.svg?invert_in_darkmode&sanitize=true" align=middle width=79.03346054999999pt height=24.65753399999998pt/>, for <img src="/tex/cb64b662810fa2e879c6c890c2c20026.svg?invert_in_darkmode&sanitize=true" align=middle width=93.33412439999998pt height=21.68300969999999pt/>
<img src="/tex/efb514c886a1edd953f62e3c64752b1d.svg?invert_in_darkmode&sanitize=true" align=middle width=82.79584334999998pt height=24.65753399999998pt/>, for <img src="/tex/cb64b662810fa2e879c6c890c2c20026.svg?invert_in_darkmode&sanitize=true" align=middle width=93.33412439999998pt height=21.68300969999999pt/>
<img src="/tex/0f1e19b8023600ed9036bd1af5957893.svg?invert_in_darkmode&sanitize=true" align=middle width=107.1804756pt height=24.65753399999998pt/>, for <img src="/tex/bfd898f3193f13c76d64173d28ac7a86.svg?invert_in_darkmode&sanitize=true" align=middle width=95.38131569999997pt height=21.68300969999999pt/>

The resulting table of <img src="/tex/e0bccba5f61931c93bf2b42a9648d584.svg?invert_in_darkmode&sanitize=true" align=middle width=41.936949449999986pt height=24.65753399999998pt/> values is known as the epsilon table.

Epsilon table values with an even <img src="/tex/36b5afebdba34564d884d347484ac0c7.svg?invert_in_darkmode&sanitize=true" align=middle width=7.710416999999989pt height=21.68300969999999pt/>-th index, i.e. <img src="/tex/89db79db8572b902d7f043db0510df7b.svg?invert_in_darkmode&sanitize=true" align=middle width=48.48949214999999pt height=24.65753399999998pt/>, are commonly used to compute rational sequence transformations and extrapolations, such as Shank's Transforms, and Pade Approximants.
