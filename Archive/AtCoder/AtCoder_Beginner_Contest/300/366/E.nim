include atcoder/header
let
  N,D=nextInt()
  M=10^6+D
var x,y=newSeq[int](N)
for i in 0..<N:
  let xi,yi=nextInt()+M
  x[i]=xi; y[i]=yi
x.sort; y.sort
proc f(p:seq):seq=
  var lp=newSeq[int](M*2+1)
  lp[0]=p.sum
  var j=0
  for i in 1..M*2:
    while j<N and p[j]<i: j+=1
    lp[i]=lp[i-1]-(N-j)+j
  return lp
var
  lx=f(x).sorted(Descending)
  ly=f(y).sorted
var j,a=0
for ilx in lx:
  while ilx+ly[j]<=D: j+=1
  a+=j
echo a