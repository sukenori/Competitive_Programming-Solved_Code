include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let
  N,Q=int.input
var
  s:seq[float]
  t:Table[int,float]
for i in 0..<N:
  let X,Y=float.input
  var ee=radToDeg(arctan2(Y,X))
  if ee<0.0: ee+=360.0
  t[i]=ee
  s.add(ee)
var ss=s.toSeq.sorted
dump ss
loop Q:
  let A,B=int.input-1
  var
    aa=t[A]
    bb=t[B]
  if aa>=bb: echo ss.lessEqual(aa).count-ss.less(bb).count
  else: echo ss.lessEqual(aa).count+ss.greaterEqual(bb).count
