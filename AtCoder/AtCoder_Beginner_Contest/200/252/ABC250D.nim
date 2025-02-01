include atcoder/header
let N=nextInt()
let n=N.float.cbrt.int
import atcoder/extra/math/eratosthenes
let e=initEratosthenes(n).prime.mapIt(it.int)
proc f(p,q:int):int=
  if e[p].float*pow(e[q].float,3)>10.0^18: int.inf
  else: e[p]*e[q]^3
var a=0
for p in 0..<e.len-1:
  for q in p+1..<e.len:
    if f(p,q)>N: break
    a+=1
echo a