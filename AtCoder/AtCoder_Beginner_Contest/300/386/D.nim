include atcoder/header
let N,M=nextInt()
var
  g=newSeqWith(N,newSeq[int](N))
  w:HashSet[(int,int)]
for i in 0..<M:
  let X,Y=nextInt()-1
  let C=nextString()
  if C=="W": g[X][Y]=1
  else: w.incl((X,Y))
import atcoder/extra/dp/cumulative_sum_2d
let s=g.initCumulativeSum2D
var f=true
for wi in w:
  let (X,Y)=wi
  if s[0..X,0..Y]>0: f=false
echo if f: "Yes" else: "No"