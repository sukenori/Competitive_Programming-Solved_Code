include atcoder/header
let N,Q=nextInt()
var
  lx=newSeq[int](N)
  ly=(1..N).toSeq.reversed
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let C=nextString()
    if C=="R":
      lx.add(lx[^1]+1); ly.add(ly[^1])
      