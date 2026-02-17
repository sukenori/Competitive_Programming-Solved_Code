include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  A=Seq[N:int.input]
  m=A.max
var a=Seq[m+1:0]
for i in 0..<N:
  a[m-A[i]+1]+=1
a=a.cumsummed
for i in countdown(m,1,1):
  a[i-1]+=a[i] div 10
  a[i]=a[i] mod 10
echo (if a[0]==0: a[1..^1] else: a).mapIt($it).join