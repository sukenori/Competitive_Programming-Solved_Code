include atcoder/header
let N,M,X1=nextInt()
var
  t=newSeq[tuple[S,A,B,T:int]](M)
  X=newSeq[int](M)
for i in 0..<M:
  let Ai,Bi,Si,Ti=nextInt()
  t[i]=(Si,Ai-1,Bi-1,Ti)
let o=(0..<M).toSeq.sortedByIt(t[it])
var
  nA=t[0].B
  Xi=X1
for i in o.find(0)+1..<M:
  if nA=t[o[i]].A:
    Xi=max(0,t[o[i]].Xi)
    X[o[i]]=Xi
echo X[1..^1].join(" ")