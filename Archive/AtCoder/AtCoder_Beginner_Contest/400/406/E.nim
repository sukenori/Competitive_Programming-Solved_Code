include atcoder/header
import atcoder/modint
type mint=modint998244353
let m=(0..<60).toSeq.mapIt(10.mint.pow(it))
let T=nextInt()
for _ in 1..T:
  let N,K=nextInt()
  var v:seq[seq[int]]
  proc f(i:int,c:seq[int])=
    if i==N:
      var v=v; v.add(c)
    else:
      if K-c.len<N-i: f(i+1,c)
      if c.len<K:
        var c=c; c.add(i); f(i+1,c)
  f(0,newSeq[int]())
  echo v.mapIt(it.mapIt(m[it]).sum).sum