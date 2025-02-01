include atcoder/header
let N=nextInt()
import atcoder/extra/math/eratosthenes
let p=initEratosthenes(50).prime
var s:HashSet[int]
for i in 1..<1 shl p.len:
  var hi=1
  for j in 0..<p.len:
    if ((i shr j) and 1)==1: hi*=p[j]
  s.incl(hi)
for i in 1..N:
  let X=nextInt()
  let si=s
  for sj in si:
    if gcd(sj,X)==1: s.excl(sj)
echo s.toSeq.min