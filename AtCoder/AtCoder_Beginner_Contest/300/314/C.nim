include atcoder/extra/header/chaemon_header
let
  N,M=nextInt()
  S=nextString()
  C=Seq[N:nextInt()]
var c=Seq[M+1: @char.toDeque]
for i,Si in S: c[C[i]].addLast(Si)
for i in 1..M: c[i].addFirst(c[i].popLast)
echo (block: collect(newSeq):
  for i in 0..<N: c[C[i]].popFirst).join