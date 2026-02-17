include atcoder/header
var A:seq[int]
let Q=nextInt()
for _ in 1..Q:
  let q,x=nextInt()
  if q==1: A.add(x)
  else: echo A[^x]