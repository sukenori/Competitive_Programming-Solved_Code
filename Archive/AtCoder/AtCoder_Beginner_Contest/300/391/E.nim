include atcoder/header
let N=nextInt()
var A=nextString().mapIt((($it).parseInt,1))
for i in 0..<N:
  var Ai:seq[(int,int)]
  for j in 0..<A.len div 3:
    let
      Aj=A[3*j..3*j+2]
      r0=(Aj.mapIt(it[0]).sum>1).int
      r1=Aj.filterIt(it[0]==r0).mapIt(it[1]).sorted[0..(Aj.mapIt(it[0]).toCountTable.values.toSeq.sorted[0]==3).int].sum
    Ai.add((r0,r1))
  A=Ai
echo A[0][1]