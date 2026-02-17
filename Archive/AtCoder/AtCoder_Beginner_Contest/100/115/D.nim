include atcoder/header
let N,X=nextInt()
var d=newSeq[int](N+1); d[0]=1
for i in 1..N: d[i]=3+d[i-1]*2
proc b(n,i:int):int=
  if (n,i)==(0,1): return 1
  if i==1: return 0
  if 1<i and i<2+d[n-1]: return b(n-1,i-1)
  if i==2+d[n-1]: return b(n-1,d[n-1])+1
  if 2+d[n-1]<i and i<3+d[n-1]*2: return b(n-1,d[n-1])+1+b(n-1,i-(2+d[n-1]))
  if i==d[n]: return b(n-1,d[n-1])*2+1
echo b(N,X)