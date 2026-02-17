include atcoder/extra/header/chaemon_header
N:=nextInt()
A := @[0]&Seq[N:nextInt()]
var s,m=Seq[N+1:int]
for i in 1..N:
  s[i]=s[i-1]+A[i]
  m[i]=max(m[i-1],s[i])
for i in 2..N: s[i]+=s[i-1]
a:=0
for i in 1..N: a.max=s[i-1]+m[i]
echo a