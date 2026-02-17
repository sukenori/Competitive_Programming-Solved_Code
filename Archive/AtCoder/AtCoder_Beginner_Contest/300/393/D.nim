include atcoder/header
let
  N=nextInt()
  S=nextString()
var
  cl,cr=newSeq[int](N+1)
  cli,cri=0
for i in 1..N:
  cl[i]=cl[i-1]
  if S[i-1]=='1': cli+=1 else: cl[i]+=cli
  cr[N-i]=cr[N-i+1]
  if S[N-i]=='1': cri+=1 else: cr[N-i]+=cri
var a=int.inf
for i in 0..N: a.min=cl[i]+cr[i]
echo a