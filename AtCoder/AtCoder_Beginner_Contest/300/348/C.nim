include atcoder/header
let N=nextInt()
var t:Table[int,int]
for _ in 1..N:
  let A,C=nextInt()
  if t.hasKeyOrPut(C,A): t[C].min=A
echo t.values.toSeq.max