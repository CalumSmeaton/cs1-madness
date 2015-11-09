module list

import nat
import pair
import bool
import ite
import eq
import Serialize

infixr 7 ::

data list a = nil | (::) a (list a)

length: list a -> nat
length nil = O
length (n :: l') = S (length l')

|||this is append just defined as an infix operator
(++): list a -> list a -> list a
(++) nil x = x
(++) (h :: t) x = h :: (t ++ x)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

--filter evenb nil
--returns nil
--filter evenb ((S(S(S O))) :: (S(S O)) :: (S O) :: nil)
--returns list 2 0 nil

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h :: t) = ite (f h)
                        (h :: (filter f t))
                              (filter f t)

foldr: (a -> a -> a) -> a -> (list a) -> a
foldr f id nil = id
foldr f id (h :: t)  = f h (list.foldr f id t)

--this function is only applicable to values of eq type class
member: (eq a) => a -> list a -> bool
member v nil = false
member v (h :: t) = ite (eql v h)
                          true
                          (member v t)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil nil = true
subset_elements nil l2 = true
subset_elements l2 nil = false
subset_elements (h1 :: t1) l2 = ite (member h1 l2) (subset_elements t1 l2)(false)

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

instance (eq a) => eq (list a) where
  eql (nil) (nil) = true
  eql (h :: t) (nil) = false
  eql (nil) (h :: t) = false
  eql (h1 :: t1) (h2 :: t2) = and (eql h1 h2) (eql t1 t2)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h :: nil) = (toString h)
toStringList (h :: t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString nil = "[]"
  --toString (h1 :: nil) = (toString h1)
  toString l =  "[" ++ (toStringList l) ++ "]"

--myList: list bool
--myList = (true::false::false::false::true::nil)

--toStringHelper: (Serialize a) => list a -> String
--toStringHelper myList = "[" ++ toString myList ++ "]"
