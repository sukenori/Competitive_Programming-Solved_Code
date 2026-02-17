include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var
  c:Table[int,int]
  a=0
for i in countdown(N-1,1):
  if c.hasKeyOrPut(A[i]-i,1): c[A[i]-i]+=1
  if c.hasKey(-(A[i-1]+(i-1))): a+=c[-(A[i-1]+(i-1))]
echo a