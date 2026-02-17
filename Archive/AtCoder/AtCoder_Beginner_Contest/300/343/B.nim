include atcoder/header
let N=nextInt()
for i in 1..N:
  var g=newSeq[int](0)
  for j in 1..N:
    let A=nextInt()
    if A==1: g.add(j)
  echo g.join(" ")