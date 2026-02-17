include atcoder/header
let
  N,M=nextInt()
  S=newSeqWith(N,nextString())
var a:HashSet[seq[char]]
for i in 0..<N-(M-1):
  for j in 0..<N-(M-1):
    var ai:seq[char]
    for k in 0..<M:
      for l in 0..<M:
        ai.add(S[i+k][j+l])
    a.incl(ai)
echo a.len