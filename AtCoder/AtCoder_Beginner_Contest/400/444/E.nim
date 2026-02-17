include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let
  N,D=int.input
  A=Seq[N:int.input]
var
  s=initSet[int]()
  r,a=0
for l in 0..<N:
  while r<N and s.lessEqual(A[r]-D).count+s.greaterEqual(A[r]+D).count==s.len:
    s.incl(A[r]); r+=1
  a+=r-l; s.excl(A[l]) 
echo a