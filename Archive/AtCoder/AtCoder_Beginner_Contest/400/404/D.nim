include atcoder/header
let
  N,M=nextInt()
  C=newSeqWith(N,nextInt())
var A=newSeqWith(N,newSeq[int]())
for i in 0..<M:
  let K=nextInt()
  for _ in 1..K:
    let Aj=nextInt()-1
    A[Aj].add(i)
var a=int.inf
for i in 0..<3^N:
  var
    ai=0
    n=i
    id=0.repeat(N)
  var j=0; while n>0: id[j]=n mod 3; n=n div 3; j+=1
  var s=newSeq[int](M)
  for j in 0..<N:
    ai+=C[j]*id[j]
    for Ai in A[j]: s[Ai]+=id[j]
  if s.allIt(it>=2): a.min=ai
echo a