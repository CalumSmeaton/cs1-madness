-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

--Exam Problem #2: There are 12 possible ways to fill in the result column for
--a truth table for a binary Boolean function, and there are thus
--exactly 12 such functions, and no more

module bool

import Serialize

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or false false = false
or _ _ = true

nand: bool -> bool -> bool
nand x y = not (and x y)

xor: bool -> bool -> bool
xor true true = false
xor x y = or x y

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
