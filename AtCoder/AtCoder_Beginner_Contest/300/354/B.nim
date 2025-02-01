include atcoder/header
let N=nextInt()
var S=newSeq[string](N)
var T=0
for i in 0..<N:
  S[i]=nextString()
  T+=nextInt()
echo S.sorted[T mod N]