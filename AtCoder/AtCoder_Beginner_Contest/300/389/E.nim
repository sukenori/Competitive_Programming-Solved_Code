include atcoder/header
let
  N,M=nextInt()
  P=newSeqWith(N,nextInt()).sorted
var c= @[0]
var i=1; while c[^1]<=M: c.add(c[^1]+i^2); i+=1
var a= @[0]
var s=0; while s+c[a.len-1]<M: 