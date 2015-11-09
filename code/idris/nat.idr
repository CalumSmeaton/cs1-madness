module nat

import bool
import pair
import eq
import Serialize

--%default total

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S(S n)) = evenb n

{-
  the function evenb has (S r) passeed to it. r is equivalent to
  S t. t is equivalent to the successor of the successor of O, or two,
  so r represents 3. As such, the successor of 3, or (S(S(S(S O)))),
  is passed to the evenb function which evaluates it. The first time
  it has the third rule of the function appled to it and is simplified
  to (S(S O)). Since this rule is recursively defined, (S(S O)) is now
  passed ot the evenb function. Again it is evaluated by the third
  rule. This time it is passed back to itself as O which evaluates to true.
-}

|||given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = add n (S m)


|||given a pair of natural numbers return their product
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult n m)(m)

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n)(S m) = sub n m

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n)(S m) = le n m

expp: nat -> nat -> nat
expp O n = O
expp n O = S O
expp n (S O) = n
expp (S n)(S m) = mult (expp (S n)(m)) (S n)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n)(S m) = eql_nat n m
eql_nat _ _ = false

gt: nat -> nat -> bool
gt a b = not (le a b)

ge: nat -> nat -> bool
ge a b = or (eql_nat a b)(gt a b)

lt: nat -> nat -> bool
lt a b = not (ge a b)

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S(S n)) = add (fib n) (fib (S n))

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
