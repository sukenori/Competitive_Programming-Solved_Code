include atcoder/header
let N=nextInt()
var
  P=newSeqWith(N,nextInt()-1)
  a:seq[int]
var i=0; for j in 0..<N:
  if P[j]==i:
    for k in countdown(j-1,i,1):
      echo k
      swap(P[k],P[k+1]); a.add(k)
      if P[k]!=k: echo -1; quit()
  i=j
echo a.mapIt(it+1).join("\n")