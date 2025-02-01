include atcoder/header
let N,M=nextInt()
import atcoder/dsu
var d=initDSU(N*2)
for i in 0..<N: d.merge(i,i+N)
var X=0
for _ in 1..M:
  var
    A=nextInt()-1
    B=nextString()
    C=nextInt()-1
    D=nextString()
  if B=="B": A+=N
  if D=="B": C+=N
  if d.same(A,C): X+=1
  else: d.merge(A,C)
echo X," ",d.groups.len-X