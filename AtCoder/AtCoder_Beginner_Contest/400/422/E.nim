include atcoder/header
let N=nextInt()
var x,y=newSeq[int](N)
for i in 0..<N: x[i]=nextInt(); y[i]=nextInt()
import random
randomize()
for _ in 1..100:
  var i,j:int
  while i==j: i=rand(N-1); j=rand(N-1)
  let
    a=y[i]-y[j]
    b=x[j]-x[i]
    c=x[i]*y[j]-x[j]*y[i]
  if (0..<N).toSeq.mapIt(a*x[it]+b*y[it]+c).countIt(it==0)>N div 2:
    echo "Yes"; echo a," ",b," ",c; quit()
echo "No"