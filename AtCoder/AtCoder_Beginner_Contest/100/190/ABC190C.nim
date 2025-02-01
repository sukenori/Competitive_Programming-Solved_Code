include atcoder/header
let N,M=nextInt()
var A,B=newSeq[int](M)
for i in 0..<M:
  let Ai,Bi=nextInt()-1
  A[i]=Ai; B[i]=Bi
let K=nextInt()
var C,D=newSeq[int](K)
for i in 0..<K:
  let Ci,Di=nextInt()-1
  C[i]=Ci; D[i]=Di
var a=0
for i in 0..<1 shl K:
  var
    f=newSeq[bool](N)
    ai=0
  for j in 0..<K:
    if (i shr j and 1)==0: f[C[j]]=true
    else: f[D[j]]=true
  for j in 0..<M:
    if f[A[j]] and f[B[j]]==true: ai+=1
  a.max=ai
echo a