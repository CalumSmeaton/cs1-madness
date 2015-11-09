module bool
data bool = true | false

id_bool: bool -> bool
id_bool b = b

constTrue: bool -> bool
constTrue _ = true

constFalse: bool -> bool
constFalse _ = false

not: bool -> bool
not true = false
not _ = true

--exam problem #2: there are 12 possible ways to fill in the result column for a
--truth table for a binary boolean function and there are thus exactly 12 functions
--and no more
