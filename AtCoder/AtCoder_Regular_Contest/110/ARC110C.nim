include atcoder/header
let N=nextInt()
var
  P=newSeqWith(N,nextInt()-1)
  o=(0..<N).toSeq.sortedByIt(P[it])
  a:seq[int]
var i=0; while i<N:
  if P[i]!=i:
    let j=o[i]
    for k in countdown(j,i+1):
      a.add(k)
      swap(P[k],P[k-1]); swap(o[P[k]],o[P[k-1]])
    for k in i..<j:
      if P[k]==k: i=k
      else: echo -1; quit()
  i+=1
echo a.join("\n")