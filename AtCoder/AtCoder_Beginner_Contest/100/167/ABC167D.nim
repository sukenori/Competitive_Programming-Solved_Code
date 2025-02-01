include atcoder/header
let N,K=nextInt()
let A=newSeqWith(N,nextInt()-1)
var o= @[0]
var i:int
var s=[0].toHashSet
while true:
  let n=A[o[^1]]
  if n notin s: o.add(n); s.incl(n)
  else: i=o.find(n); break
echo if K<i: o[K]+1 else: o[i+(K-i) mod (o.len-i)]+1 