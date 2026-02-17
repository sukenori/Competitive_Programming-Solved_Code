include atcoder/header
let N=nextInt()
var A:Table[int,seq[int]]
for i in 1..N:
  let Ai=nextInt()
  if A.hasKeyOrPut(Ai,@[i]): A[Ai].add(i)
let Q=nextInt()
for _ in 1..Q:
  let L,R,X=nextInt()
  echo if A.hasKey(X): A[X].upperBound(R)-A[X].lowerBound(L) else: 0