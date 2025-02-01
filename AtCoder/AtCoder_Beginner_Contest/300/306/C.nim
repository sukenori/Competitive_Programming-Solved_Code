include atcoder/extra/header/chaemon_header
N:=nextInt()
c:=Seq[N+1:0]; a:= @int
for i in 1..3*N:
  A:=nextInt()
  c[A]+=1
  if c[A]==2: a.add(A)
echo a.join(" ")