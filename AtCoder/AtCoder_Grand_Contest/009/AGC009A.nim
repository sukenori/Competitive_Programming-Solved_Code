include atcoder/header
let N=nextInt()
var A,B=newSeq[int](N)
for i in 0..<N:
  let Ai,Bi=nextInt()
  A[i]=Ai; B[i]=Bi
var a=0
for i in countdown(N-1,0):
  a+=(B[i]-(A[i]+a) mod B[i]) mod B[i] 
echo a