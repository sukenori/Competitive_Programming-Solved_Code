include atcoder/header
proc f(x:int):int=
  for xi in $x:
    result+=($xi).parseInt
let N=nextInt()
var A=newSeq[int](N+1)
A[0]=1
for i in 1..N:
  for j in 0..<i: A[i]+=f(A[j])
echo A[N]