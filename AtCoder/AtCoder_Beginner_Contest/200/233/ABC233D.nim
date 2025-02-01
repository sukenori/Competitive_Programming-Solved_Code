include atcoder/extra/header/chaemon_header
let N,K=nextInt()
A := @[0]&Seq[N:nextInt()]
var t:Table[int,int]
for i in 1..N: A[i]+=A[i-1]
a:=0
for i in 1..N:
  if t.hasKeyOrPut(A[i-1],1): t[A[i-1]]+=1
  if t.hasKey(A[i]-K): a+=t[A[i]-K]
echo a