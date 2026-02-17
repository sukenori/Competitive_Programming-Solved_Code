include atcoder/header
let
  N=nextInt()
  P,Q=newSeqWith(N,nextInt()-1)
var z,p,l:Table[int,int]
for i in 0..<N: z[i]=Q[i]; p[Q[i]]=i; l[i]=P[i]
echo (0..<N).toSeq.mapIt(z[l[p[it]]]+1).join(" ")