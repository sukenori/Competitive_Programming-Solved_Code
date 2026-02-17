include atcoder/header
let
  N=nextInt()
  n=N.float.sqrt.int
import atcoder/extra/math/eratosthenes
let p=initEratosthenes(n).prime.mapIt(it.int)
var a=0
for i,pi in p:
  a+=max(0,p.upperBound(n div pi)-1-i)
  if pi^2<=n.float.sqrt.int: a+=1
echo a