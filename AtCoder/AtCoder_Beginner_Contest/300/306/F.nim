include atcoder/extra/header/chaemon_header
let N,M=nextInt()
A:=Seq[N,M:nextInt()]
c:=A.concat.sorted
f:=Seq[N*M+1:0]
a:=0
for i in 0..<N-1<<1:
  for Ai in A[i+1]:
    j:=c.lowerBound(Ai)+1
    while j<=N*M: f[j]+=1; j+=j and -j
  a+=M*(M+1)//2*(i+1)
  for Ai in A[i]:
    j:=c.lowerBound(Ai)+1
    while j>0: a+=f[j]; j-=j and -j
echo a