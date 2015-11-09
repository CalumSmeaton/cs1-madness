import relation

import list
import bool
import people
import Person
import pair

wAge: Nat
wAge = query2 people gender age plus 0
--expect 41

number: Nat
number = query2 people gender countOne plus 0
--expect 2

number': Nat
number' = count_rel people gender
--expect 2

sum_test1: Nat
sum_test1 = sum_rel people gender age
--expect 41

ave_test1: pair Nat Nat
ave_test1 = ave_rel people gender age
--expect 41 2
