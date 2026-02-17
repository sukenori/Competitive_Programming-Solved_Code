include atcoder/header
let
  N,K=nextInt()
  P=newSeqWith(N,nextInt()-1)
var a=0.repeat(N)
for i in 0..<N:
  if a[i]==0:
    var
      j=i
      s= @[P[i]]
    while P[j]!=i:
      s.add(P[j]); j=P[j]
    echo s.mapIt(it+1)
    for j,sj in s:
      a[sj]=P[s[(K+j) mod s.len]]+1
echo a.join(" ")