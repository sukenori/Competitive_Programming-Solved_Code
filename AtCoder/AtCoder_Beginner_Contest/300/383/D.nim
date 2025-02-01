include atcoder/header
import atcoder/extra/math/eratosthenes
let
  N=nextInt()
  n=N.float.sqrt.int
  p=initEratosthenes(n).prime.mapIt(it.int)
var a=0
for i in 0..<p.len-1:
  a+=max(0,p.upperBound(n div p[i])-1-i)
  if p[i]^2<=n.float.sqrt.int: a+=1
echo a