include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var d=newSeq[int](N-1)
for i in 0..<N-1: d[i]=A[i+1]-A[i]
var c=newSeq[(int,int)]()
if d.len>0: c.add((d[0],1))
for i in 1..<N-1:
  if d[i]==c[^1][0]: c[^1][1]+=1
  else: c.add((d[i],1))
var a=N
for (di,ci) in c: a+=(1+ci)*ci div 2
echo a