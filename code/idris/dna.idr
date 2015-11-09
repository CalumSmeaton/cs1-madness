module dna
import list
import pair
import ite
import bool
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C


complement_strand: list base -> list base
complement_strand (h :: t) = map complement_base (h :: t)

{-
This is lame!
strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 (mkPair b1 b2 :: t) = b1 :: (strand1 t)

This is also lame!
strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 (mkPair b1 b2 :: t) = b2 :: (strand2 t)
-}

||| dope strand function that takes a list of pairs of bases and a bool
||| if this bool is true it will act as strand1, otherwise it will act as strand2
strand: list (pair base base) -> bool -> list base
strand nil x = nil
strand (mkPair b1 b2 :: t) id = ite (id) (b1 :: (strand t id)) (b2 :: (strand t id))

build_base_pair: base -> pair base base
build_base_pair b = mkPair (b) (complement_base b)

--WHY DO I HAVE TO USE MAP?!
complete: list base -> list (pair base base)
complete nil = nil
--complete (h :: t)  = (mkPair h (complement_base h)) :: (complete t)
complete x = map build_base_pair x

equal_base: base -> base -> nat
equal_base A A = (S O)
equal_base A _ = O
equal_base T T = (S O)
equal_base T _ = O
equal_base C C = (S O)
equal_base C _ = O
equal_base G G = (S O)
equal_base G _ = O

build_base_list: base -> list base -> list nat
--build_base_list b nil = nil
build_base_list b (h :: t) = map (equal_base b) (h :: t)

countBase: list base -> base -> nat
countBase nil b = O
countBase lb b = foldr add (build_base_list b lb) O
