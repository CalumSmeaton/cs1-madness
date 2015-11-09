module Beat

import relation
import bool

||| A beat has a name, tempo, and may or may not be
||| available for exclusive ownership

record Beat where
  constructor mkBeat
  name: String
  tempo: Nat
  leasePrice: Nat
  exclusiveRights: bool
