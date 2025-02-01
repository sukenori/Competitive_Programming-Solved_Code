include atcoder/header
let
  N=nextInt()
  H=newSeqWith(N,nextInt()-1)
  o=(0..<N).toSeq.sortedByIt(H[it])
var d=newSeqWith(N,newSeq[int](N))
for i in 0..<N: d[i][H[i]]=1
import atcoder/extra/dp/cumulative_sum_2d
let s=d.initCumulativeSum2D
var
  a=newSeq[int](N)
  m=0
for i in countdown(N-1,1):
  m.max=H[i]
  a[i-1]=s[i..o[m],max(1,H[i])..m]
echo a.join(" ")