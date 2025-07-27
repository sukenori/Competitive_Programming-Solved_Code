include atcoder/header
let N,Q=nextInt()
var
  A=(1..N).toSeq
  d=0
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let p,x=nextInt()
    A[(p-1+d) mod N]=x
  elif q==2:
    let p=nextInt()
    echo A[(p-1+d) mod N]
  else:
    let k=nextInt()
    d+=k