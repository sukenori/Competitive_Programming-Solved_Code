include atcoder/header
var N,K=nextInt()
var A=newSeqWith(10^5+1,0)
for _ in 1..N:
  let a,b=nextInt()
  A[a]+=b
for i in 1..10^5:
  if K-A[i]<=0: echo i; quit()
  else: K-=A[i]