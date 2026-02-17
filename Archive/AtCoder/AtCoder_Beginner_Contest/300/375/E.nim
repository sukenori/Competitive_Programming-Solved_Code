include atcoder/header
let N=nextInt()
var
  A,B=newSeq[int](N)
  t=newSeqWith(3,newSeq[int]())
for i in 0..<N:
  let Ai,Bi=nextInt()
  A[i]=Ai; B[i]=Bi
  t[Ai-1].add(Bi)
if B.sum mod 3!=0: echo -1
let s=B.sum div 3
var dp:HashSet[seq[int]]
for i in 0..<N:
  var ndp=dp
  for dpi in dp:
    if dpi.toSeq.sum+B[i]<=s:
      ndp.incl(dpi & @[B[i]])
  ndp.incl(@[B[i]]); dp=ndp
for dpi in dp:
  if dpi.toSeq.sum==s: echo dpi
for 