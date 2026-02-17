include atcoder/header
let
  L,R=nextInt()
  r=R.float.sqrt.int
import atcoder/extra/math/eratosthenes
let p=initEratosthenes(r).prime.mapIt(it.int)
var
  e=newSeq[bool](R-L)
  c=1
for pi in p:
  var i=max(pi*pi,(L+1).ceilDiv(pi)*pi)
  while i<=R:
    if not e[i-(L+1)]:
      e[i-(L+1)]=true
      var j=i; while j mod pi==0: j=j div pi
      if j==1: c+=1
    i+=pi
echo e.count(false)+c