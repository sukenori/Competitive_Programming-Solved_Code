include atcoder/header
let N=nextInt()
var t:Table[int,int]
for _ in 1..N:
  let A=nextInt()
  if t.hasKeyOrPut(A,1): t[A]+=1
let k=t.keys.toSeq.sorted
for i in 1..<k.len: t[i]+=t[i-1]
var a=0
for ki in k: 