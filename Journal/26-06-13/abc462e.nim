include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let T=int.input
for _ in 1..T:
  let
    A,B=int.input
    X,Y=int.input.abs
    l=min(A,B)
    h=max(A,B)
  var
    m=min(X,Y)
    a=l*(m*2)
    d=max(X,Y)-m
  if h*2>l*4:
    a+=d div 2*l*4
  else:
    a+=d div 2*(A+B)
  if d mod 2==1:
    
  echo a