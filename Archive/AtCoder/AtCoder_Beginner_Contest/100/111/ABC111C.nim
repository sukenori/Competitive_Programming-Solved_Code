include atcoder/header
let n=nextInt()
let v=newSeqWith(n,nextInt())
proc f(s:seq[int]):seq[(int,int)]=
  s.mapIt(v[it]).toCountTable.pairs.toSeq.mapIt((it[1],it[0])).sorted(Descending)
let
  a=(0..<n).toSeq
  a0=f(a.filterIt(it mod 2==0))&(0,0)
  a1=f(a.filterIt(it mod 2==1))&(0,0)
proc c(a0,a1:(int,int)):int=
  n div 2-a0[0]+n div 2-a1[0]
if a0[0][1]!=a1[0][1]: echo c(a0[0],a1[0])
else: echo min(c(a0[0],a1[1]),c(a0[1],a1[0]))