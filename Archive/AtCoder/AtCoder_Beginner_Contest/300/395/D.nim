include atcoder/header
let N,Q=nextInt()
var
  p=(0..<N).toSeq
  n,r=p
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let a,b=nextInt()-1
    p[a]=r[b]
  elif q==2:
    let a,b=nextInt()-1
    swap(n[r[a]],n[r[b]])
    swap(r[a],r[b])
  else:
    let a=nextInt()-1
    echo n[p[a]]+1