include atcoder/header
let N,M=nextInt()
var A=newSeqWith(M,newSeq[int]())
for i in 0..<M:
  let K=nextInt()
  for j in 1..K:
    let Aj=nextInt()
    A[i].add(Aj)
var B:Table[int,int]
for i in 0..<N:
  let Bi=nextInt()
  B[Bi]=i
var a=newSeq[int](N)
for i in 0..<M:
  var ai=0
  for Aj in A[i]: ai.max=B[Aj]
  a[ai]+=1
echo a.cumsummed.join("\n")