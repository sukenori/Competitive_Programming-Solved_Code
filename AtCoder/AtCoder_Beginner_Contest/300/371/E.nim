include atcoder/header
let N=nextInt()
var A=newSeqWith(N+1,@[0])
for i in 1..N:
  let Ai=nextInt()
  A[Ai].add(i)
for i in 1..N: A[i].add(N+1)
var a=0
for i in 1..N:
  a+=(1+N)*N div 2
  for j in 1..<A[i].len:
    let n=A[i][j]-A[i][j-1]-1
    a-=(1+n)*n div 2
echo a