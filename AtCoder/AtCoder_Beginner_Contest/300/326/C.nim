include atcoder/extra/header/chaemon_header
let N,M=nextInt()
A:=Seq[N:nextInt()].sorted
a:=0
for i,Ai in A:
  a.max=A.lowerBound(Ai+M)-i
echo a