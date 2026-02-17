include atcoder/extra/header/chaemon_header
N:=nextInt()
Q:=Seq[N:nextInt()]
A:=Seq[N:nextInt()]
B:=Seq[N:nextInt()]
m:=int.inf
for i in 0..<N:
  if A[i]!=0: m.min=Q[i]//A[i]
a:=0
for i in 0..m:
  ai:=int.inf
  for j in 0..<N:
    if B[j]!=0: ai.min=(Q[j]-A[j]*i)//B[j]
  a.max=i+ai
echo a