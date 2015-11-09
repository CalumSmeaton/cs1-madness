module unit

import eq
import Serialize

data unit = mkUnit

unit_id: unit -> unit
unit_id void = mkUnit

eql_unit: unit -> unit -> bool
eql_unit _ _ = true

instance eq unit where
  eql u1 u2 = true

instance Serialize unit where
  toString u = "()"
