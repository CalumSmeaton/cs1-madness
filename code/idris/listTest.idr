import list
import nat
import Beat
import bool
import BeatList
import people
import Person
import eq
import Serialize

l0: list nat
l0 = nil

l1: list nat
l1 = (S O) :: (S(S O)) :: (S(S(S O))) :: nil

l2: list nat
l2 = (S(S(S(S O)))) :: (S(S(S(S(S O))))) :: (S(S(S(S(S(S( O))))))) :: nil

len_0: nat
len_0 = length l0

len_1: nat
len_1 = length l1

l_0_1: list nat
l_0_1 = l0 ++ l1

l_1_2: list nat
l_1_2 = l1 ++ l2

li: list bool
li = true :: false :: true :: true :: nil

isThree: bool
isThree = (member (S (S (S O))) l2)

s: String
s = toString li
