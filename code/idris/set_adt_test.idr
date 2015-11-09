import set_adt
import nat
import list
import eq
import Serialize
import option
import pair

set_adt_s1: set nat
set_adt_s1 = (mkSet ((S O)::(S(S O))::(S(S(S O)))::nil))

set_adt_s2: set nat
set_adt_s2 = (mkSet ((S(S(S(S O))))::(S(S(S(S(S O)))))::(S(S(S(S(S(S O))))))::nil))

set_adt_int1: set nat
set_adt_int1 = (mkSet ((S(S O))::(S(S(S O)))::(S(S(S(S O))))::nil))

set_adt_evn: set nat
set_adt_evn = (mkSet ((S(S O))::(S(S(S(S O))))::nil))

set_adt_odd: set nat
set_adt_odd = (mkSet ((S O)::(S(S(S O)))::nil))

set_rem: set nat
set_rem = set_remove (S O) set_adt_s1
--expect mkSet ((S(S O))::(S(S(S O)))::nil)

set_card: nat
set_card = set_cardinality set_adt_s1
--expect (S(S(S O)))

set_mem1: bool
set_mem1 = set_member (S O) set_adt_s1
--expect true

set_mem2: bool
set_mem2 = set_member (O) set_adt_s1
--expect false

set_uni: set nat
set_uni = set_union set_adt_s1 set_adt_s2
--expect set containing 1,2,3,4,5,6

set_int: set nat
set_int = set_intersection set_adt_s1 set_adt_int1
--expect set containing 2,3

set_dif: set nat
set_dif = set_difference set_adt_s1 set_adt_int1
--expect set containing 1,4

set_fa1: bool
set_fa1 = set_forall evenb set_adt_evn
--expect true

set_fa2: bool
set_fa2 = set_forall evenb set_adt_s1
--expect false

set_ex: bool
set_ex = set_exists evenb set_adt_s1
--expect_true

set_ex2: bool
set_ex2 = set_exists evenb set_adt_odd
--expect false

set_wit: option nat
set_wit = set_witness evenb set_adt_s1
--expect some  (S(S O))

set_prod: set (pair nat nat)
set_prod = set_product set_adt_s1 set_adt_s2
--expect set containing (1,4) (1,5)(1,6)(2,4)(2,5)(2,6)(3,4)(3,5)(3,6)
