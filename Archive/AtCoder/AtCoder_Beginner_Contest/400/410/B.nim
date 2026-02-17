include atcoder/header
let
  N,Q=nextInt()
  X=newSeqWith(Q,nextInt())
var
  c=0.repeat(N)
  a:seq[int]
for i in 0..<Q:
  if X[i]>0: a.add(X[i]); c[X[i]-1]+=1
  else: a.add(c.minIndex+1); c[c.minIndex]+=1
echo a.join(" ")