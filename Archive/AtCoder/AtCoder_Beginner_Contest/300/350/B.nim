include atcoder/header
let N,Q=nextInt()
var t=newSeqWith(N,1)
for _ in 1..Q:
  let T=nextInt()-1
  t[T]=1-t[T]
echo t.sum