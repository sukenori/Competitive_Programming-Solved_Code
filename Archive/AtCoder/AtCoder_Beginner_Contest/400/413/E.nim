include atcoder/header
let T=nextInt()
proc f(p:seq):seq=
  if p.len==1: return p
  let n=p.len div 2
  if p.minIndex<n:
    return f(p[0..<n])&f(p[n..^1])
  else:
    let p=p.reversed
    return f(p[0..<n])&f(p[n..^1])
for _ in 1..T:
  let
    N=nextInt()
    P=newSeqWith(2^N,nextInt())
  echo f(P).join(" ")