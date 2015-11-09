module colors 
 import bool 
 import pair
 
 data colors = red | green | blue | yellow | cyan | magenta 
 
 complement: colors -> colors 
 complement red = cyan 
 complement green = magenta 
 complement blue = yellow 
 complement cyan = red
 complement magenta = green
 complement yellow = blue
 
 additive: colors -> bool
 additive red = true
 additive green = true
 additive blue = true
 additive _ = false
 
 subtractive: colors -> bool 
 subtractive x = not (additive x)
 
 complements: pair colors colors -> bool
 complements (mkPair red cyan) = true
 complements (mkPair cyan red) = true
 complements (mkPair green magenta) = true
 complements (mkPair magenta green) = true
 complements (mkPair blue yellow) = true
 complements (mkPair yellow blue) = true
 complements _ = false

mixink: pair colors colors -> colors
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow magenta) = red
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan magenta) = blue
mixink (mkPair magenta cyan) = blue

-- warning mixink is not total. 
--if arguments outside of domain are provided, these arguments are
--returned
