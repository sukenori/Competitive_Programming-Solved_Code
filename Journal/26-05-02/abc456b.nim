include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let A=Seq[3,6:int.input]
var
  a=0.0
  p=[4,5,6]
while true:
  var ai=1.0
  for i in 0..2:
    ai*=A[i].count(p[i])/6
  a+=ai
  if not p.nextPermutation(): break
echo a