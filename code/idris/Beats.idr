import Beat
import list
import bool
import relation

Lucille: Beat
Lucille = mkBeat "Lucille" 81 100 false

ADR: Beat
ADR = mkBeat "ADR" 62 150 true

Foreword: Beat
Foreword = mkBeat "Foreword" 71 80 true

Hood_Rich: Beat
Hood_Rich = mkBeat "Hood Rich" 87 80 false

beats: list Beat
beats = Lucille :: ADR :: Foreword :: Hood_Rich :: nil
