include atcoder/header
let
  N=nextInt()
  P=newSeqWith(N,nextInt())
  p=(1..<N).toSeq.mapIt(P[it]-P[it-1]>0)
var c= @[(k:p[0],v:0)]
for pi in p:
  if c[^1].k==pi: c[^1].v+=1
  else: c.add((pi,1))
var a=0
for i in 0..<c.len-2:
  if c[i].k and not c[i+1].k and c[i+2].k: a+=c[i].v*c[i+2].v
echo a