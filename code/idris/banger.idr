module beatRow

import bool
import list

data beat = French_Toast | ADR | Lucille | Foreword

data beatRow = mkBeatRow beat bool Nat Nat

||| beat, banger, tempo, price for exclusive rights in thousands

french: beatRow
french = mkBeatRow French_Toast true 78 20

amor: beatRow
amor = mkBeatRow ADR true 62 25

lucy: beatRow
lucy = mkBeatRow Lucille false 81 27

fore: beatRow
fore = mkBeatRow Foreword false 81 26

beatName: beatRow -> beat
beatName (mkBeatRow n b t p) = n

bangerStatus: beatRow -> bool
bangerStatus (mkBeatRow n b t p) = b

beatTempo: beatRow -> Nat
beatTempo (mkBeatRow n b t p) = t

beatPrice: beatRow -> Nat
beatPrice (mkBeatRow n b t p) = p

beatList: list beatRow
beatList = cons french (cons amor (cons lucy (cons fore nil)))
