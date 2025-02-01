include atcoder/header
let
  N,M=nextInt()
  L=newSeqWith(N,nextInt())
var
  l=0
  r=2*10^5*10^9+2*10^5
while r-l>1:
  var
    m=(l+r) div 2
    h=1
    w=L[0]
  if m<L.max: l=m; continue
  for Li in L[1..<N]:
    w+=1+Li
    if w>m: h+=1; w=Li
  if h>M: l=m else: r=m
echo r