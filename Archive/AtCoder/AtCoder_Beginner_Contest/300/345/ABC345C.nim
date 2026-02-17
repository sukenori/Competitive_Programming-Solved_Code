include atcoder/header
let
  S=nextString()
  t=S.toCountTable.values.toSeq
echo (S.len^2-t.mapIt(it^2).sum) div 2+(t.anyIt(it>1)).int