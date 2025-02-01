include atcoder/extra/header/chaemon_header
let N,M=nextInt()
C:=Seq[N:nextString()]
D:=Seq[M:nextString()]
P0:=nextInt()
P:=Seq[M:nextInt()]
a:=0
for i in 0..<N:
  if C[i] in D: a+=P[D.find(C[i])]
  else: a+=P0
echo a