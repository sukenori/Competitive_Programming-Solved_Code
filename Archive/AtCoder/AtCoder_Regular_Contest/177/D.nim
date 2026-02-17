include atcoder/header
let
  N,H=nextInt()
  X=newSeqWith(N,nextInt())
  x=X.sorted
import atcoder/modint
type mint=modint998244353
var
  t=[(newSeqWith(N+1,0),2.mint.pow(N))].toTable
  a:seq[mint]
proc ftadd(f:seq[int];i,x:int):seq[int]=
  var i=i; result=f
  while i<=N: result[i]+=x; i+=i and -i
proc ftsum(f:seq[int];i:int):int=
  var i=i; result=0
  while i>0: result+=f[i]; i-=i and -i
for Xi in X:
  let i=x.lowerBound(Xi)
  var
    nt:Table[seq[int],mint]
    ai=0.mint
  for ki,vi in t:
    if ki.ftsum(i+1)-ki.ftsum(i)==0:
      for d in [1,-1]:
        var kj=ki; kj=kj.ftadd(i+1,1)
        var j=i
        while j+d in 0..<N and (x[j+d]-x[j])*d<=H and ki.ftsum(j+d+1)-ki.ftsum(j+d)==0:
          kj=kj.ftadd(j+d+1,1)
          j+=d
        if kj.ftsum(N)==N: ai+=vi/2
        else:
          if nt.hasKeyOrPut(kj,vi/2): nt[kj]+=vi/2
    else:
      if nt.hasKeyOrPut(ki,vi): nt[ki]+=vi
  t=nt
  a.add(ai)
echo a.join(" ")