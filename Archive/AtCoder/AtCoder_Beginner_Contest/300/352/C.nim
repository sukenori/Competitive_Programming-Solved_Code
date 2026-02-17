include atcoder/header
let N=nextInt()
var A,B=newSeq[int](N)
for i in 0..<N:
  let Ai,Bi=nextInt()
  A[i]=Ai; B[i]=Bi
let s=A.sum
var a=0
for i in 0..<N: a.max=s-A[i]+B[i]
echo a