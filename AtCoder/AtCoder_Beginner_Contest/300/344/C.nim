include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt())
let M=nextInt()
let B=newSeqWith(M,nextInt())
let L=nextInt()
let C=newSeqWith(L,nextInt())
var s:HashSet[int]
for Ai in A:
  for Bi in B:
    for Ci in C:
      s.incl(Ai+Bi+Ci)
let Q=nextInt()
for _ in 1..Q:
  let X=nextInt()
  echo if X in s: "Yes" else: "No"