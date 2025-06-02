include atcoder/header
let N=nextInt()
var
  P=newSeqWith(N,nextInt()-1)
  a:seq[int]
var i,j=0; while i<N:
  while j<N and P[j]!=i: j+=1
  if i==j: break
  for k in countdown(j-1,i):
    swap(P[k],P[k+1]); a.add(k)
  i=j
if a.len==N-1 and P==(0..<N).toSeq:
  echo a.mapIt(it+1).join("\n")
else: echo -1