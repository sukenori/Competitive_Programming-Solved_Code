include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextfloat())
var
  l=0.0
  r=10.0^9/2
proc f(x:float):float=
  for i in 0..<N: result+=x+A[i]-min(A[i],2*x)
while r-l>pow(10,-6.0):
  let
    m1=(2*l+r)/3
    m2=(l+2*r)/3
  if f(m1)>f(m2): l=m1
  else: r=m2
echo f(r)/N.float