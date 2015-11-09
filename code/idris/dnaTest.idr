import dna
import pair
import list
import bool
import nat

dna_pair_1: pair base base
dna_pair_1 = mkPair A T

dna_pair_2: pair base base
dna_pair_2 = mkPair T A

dna_pair_3: pair base base
dna_pair_3 = mkPair C G

dna_pair_4: pair base base
dna_pair_4 = mkPair G C

comp_A: base
comp_A = complement_base A

comp_T: base
comp_T = complement_base T

comp_C: base
comp_C = complement_base C

comp_G: base
comp_G = complement_base G

base_list_1: list base
base_list_1 = (A :: T :: C :: A :: nil)

base_pair_list_1: list (pair base base)
base_pair_list_1 = (mkPair A T :: mkPair T A :: mkPair C G :: mkPair A T :: nil)

comp_s_1: list base
comp_s_1 = complement_strand base_list_1

super_strand_test_first: list base
super_strand_test_first = strand base_pair_list_1 true

complete_test: list (pair base base)
complete_test = complete base_list_1

build_base_pair_test1: pair base base
build_base_pair_test1 = build_base_pair A

equal_base_test1: nat
equal_base_test1 = equal_base C C

equal_base_test2: nat
equal_base_test2 = equal_base A C

build_base_list_test1: list nat
build_base_list_test1 = build_base_list A base_list_1

countBase_test1: nat
countBase_test1 = countBase base_list_1 A

countBase_test2: nat
countBase_test2 = countBase base_list_1 T

countBase_test3: nat
countBase_test3 = countBase base_list_1 C
