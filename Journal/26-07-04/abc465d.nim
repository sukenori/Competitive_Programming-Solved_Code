include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let T=int.input
loop T:
  let X,Y,K=int.input
  if X==Y: echo 0; continue
  var
    x=[X].toDeque
    y=[Y].toDeque
  while x[0]>0:
    x.addFirst(x[0] div K)
  while y[0]>0:
    y.addFirst(y[0] div K)
  var
    sx=x.toSeq
    lx=sx.len
    sy=y.toSeq
    ly=sy.len
  for i in (lx-1..0,1):
    let j=sy.lowerbound(sx[i])
    if j<ly and sx[i]==sy[j]:
      echo lx-1-i+ly-1-j; break
  