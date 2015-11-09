module eq

import public bool

class eq a where
  eql : a -> a -> bool

-- bool must be in this file to avoid circular imports
instance eq bool where
  eql b1 b2 = eql_bool b1 b2
