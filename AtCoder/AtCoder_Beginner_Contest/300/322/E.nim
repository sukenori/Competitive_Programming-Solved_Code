include atcoder/extra/header/chaemon_header
import atcoder/extra/math/matrix
let N,K,P=nextInt()
iterator k(): seq[int]=
  for i in 0..<(P+1)^K<<1:
    var
      ki:seq[int]
      j=i
    for _ in 1..K:
      ki.insert(j%(P+1),0); j//=(P+1)
    yield ki
var dp=newTable[seq[int],int]()
for ki in k(): dp[ki]=int.inf
dp[newSeqWith(K,0)]=0
for i in 1..N:
  let
    C=nextInt()
    A=newSeqWith(K,nextInt())
  for ki in k():
    dp[(ki+A).mapIt(min(P,it))].min=dp[ki]+C
echo if (a:=dp[newSeqWith(K,P)])!=int.inf: a else: -1