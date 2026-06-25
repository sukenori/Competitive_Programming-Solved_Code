include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,K=int.input
var c=Seq[N:(int,int)]
for i in 0..<N:
  let L,R=int.input
  c[i]=(L,R)
c.sort
var mr=Seq[N:int]
mr[^1]=c[^1][1]
for i in (N-2..0,1):
  mr[i]=min(mr[i+1],c[i][1])
var
  l=0
  r=10^9+1
while r-l>1:
  let m=(l+r) div 2
  var
    f=true
    e=mr[0]
  for i in 2..K:
    if c[^1][0]<e+m: f=false; break
    else: e=mr[c.lowerBound((e+m,0))]
  if f: l=m
  else: r=m
echo if l>0: l else: -1