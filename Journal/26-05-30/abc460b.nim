include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let T=int.input
loop T:
  let X1,Y1,R1,X2,Y2,R2=int.input
  ((X2-X1)^2+(Y2-Y1)^2 in (R1-R2)^2..(R1+R2)^2).asYesNo