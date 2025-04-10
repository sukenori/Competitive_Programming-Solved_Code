include atcoder/header
import atcoder/extra/math/eratosthenes
var p=initEratosthenes(10^6).prime.mapIt(it.int)
let p0=p; for pi in p0:
  var j=pi; while j*pi<=10^6: j*=pi; p.add(j)
var a=0
for i in 0..<p.len:
  
  for j in i+1..<p0.len:
    p.add((p0[i]*p0[j])^2)
let Q=nextInt()
for _ in 1..Q:
  let A=nextInt()
  echo p[p.upperBound(A)-1]