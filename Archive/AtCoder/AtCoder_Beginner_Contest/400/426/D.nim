include atcoder/header
let T=nextInt()
for _ in 1..T:
  let
    N=nextInt()
    S=nextString()
  var c= @[(k:S[0],v:0)]
  for Si in S:
    if c[^1].k==Si: c[^1].v+=1
    else: c.add((Si,1))
  let
    c0=c.filterIt(it.k=='0').mapIt(it.v).sorted
    c1=c.filterIt(it.k=='1').mapIt(it.v).sorted
  echo min((if c0.len>0: (c0.sum-c0[^1])*2 else: 0)+c1.sum,(if c1.len>0: (c1.sum-c1[^1])*2 else: 0)+c0.sum)