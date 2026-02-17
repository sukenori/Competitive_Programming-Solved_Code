include atcoder/header
let
  S=nextString()
  o=(0..<26).toSeq.sortedByIt(S[it])
echo (1..<26).mapIt(abs(o[it]-o[it-1])).sum