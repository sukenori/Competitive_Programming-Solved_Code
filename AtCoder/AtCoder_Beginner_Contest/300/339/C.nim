include atcoder/extra/header/chaemon_header
N:=nextInt()
A := @[0]&Seq[N:nextInt()]
for i in 1..N: A[i]+=A[i-1]
echo A[^1]-A.min