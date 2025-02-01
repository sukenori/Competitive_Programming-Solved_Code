include atcoder/extra/header/chaemon_header
N:=nextInt()
A:=Seq[N:nextInt()]
l:=Seq[N:1]; r:=Seq[N:1]
for i in 1..<N:
  l[i]=min(l[i-1]+1,A[i])
  r[N-1-i]=min(r[N-1-i+1]+1,A[N-1-i])
a:=0
for i in 0..<N: a.max=min(l[i],r[i])
echo a