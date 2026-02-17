include atcoder/header
let N,Q=nextInt()
var g=newSeqWith(N,newSeq[int]())
var ind=newSeq[int](N)
for i in countdown('A'.ord,'A'.ord+N-1,2):
  echo "? ",i.chr," ",(i+1),chr
  let ans=nextString()
  
  g[u].add(v); ind[v]+=1

var a:seq[int]
while a.len<N:
  let i=ind.find(0)
  a.add(i+1); ind[i]= -1
  for j in g[i]: ind[j]-=1
echo a