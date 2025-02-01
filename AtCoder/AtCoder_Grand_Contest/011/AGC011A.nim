include atcoder/header
let N,C,K=nextInt()
let T=newSeqWith(N,nextInt()).sorted
var a=0
var i=0; while i<N:
  var c=1
  let s=T[i]
  a+=1
  while c<C and T[i]<s+K:
    i+=1; c+=1
echo a