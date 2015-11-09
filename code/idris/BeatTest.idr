import Beat
import Beats
import bool
import nat
import list
import relation
import pair

--test projection functions
n: String
n = name Lucille

t: Nat
t = tempo Lucille

e: bool
e = exclusiveRights Lucille

n1: String
n1 = name ADR

t1: Nat
t1 = tempo ADR

e1: bool
e1 = exclusiveRights ADR

--test query helper function and statistical queries
totalPriceEx: Nat
totalPriceEx = query2 beats exclusiveRights leasePrice plus 0
--expect 230

exclusives: Nat
exclusives = count_rel beats exclusiveRights
--expect 2

sumTempo: Nat
sumTempo = sum_rel beats exclusiveRights tempo
--expect 133

avePrice: pair Nat Nat
avePrice = ave_rel beats exclusiveRights leasePrice
--expect 230 2
