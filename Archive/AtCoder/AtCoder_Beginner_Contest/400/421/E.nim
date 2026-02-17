include atcoder/header
import bitops
let A=newSeqWith(6,nextInt())
iterator r(i:int): seq[int]=
  var r=0.repeat(i)
  while true:
    yield r.mapIt(A[it])
    var j=0; r[j]+=1
    while r[j]==6:
      r[j]=0; j+=1
      if j==i: break else: r[j]+=1
    if j==i: break
proc e(k,ri:seq[int]):float=
  (k&ri).toCountTable.pairs.toSeq.mapIt(it[0]*it[1]).max.float/pow(6.0,(5-k.len).float)
var m:Table[(int,seq[int]),float]
proc dp(l:int;k:seq[int]):float=
  if m.hasKey((l,k.sorted)): return m[(l,k.sorted)]
  else:
    let i=5-k.len
    if l==1:
      if i>0:
        for ri in r(i): result+=e(k,ri)
      else: result+=e(k,@[])
    else:
      if i>0:
        for ri in r(i):
          var e=0.0
          for j in 0..<1 shl i:
            e.max=dp(l-1,(k&(0..<i).toSeq.filterIt(j.testBit(it)).mapIt(ri[it])))
          result+=e/pow(6.0,i.float)
      else: result+=dp(l-1,k)
  m[(l,k.sorted)]=result
echo dp(3,newSeq[int]())