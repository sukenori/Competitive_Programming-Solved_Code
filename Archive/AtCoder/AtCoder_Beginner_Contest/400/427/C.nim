include atcoder/header
let N,M=nextInt()
var e:seq[(int,int)]
for i in 0..<M:
  let u,v=nextInt()-1
  e.add((u,v))
var a=int.inf
for i in 0..<2^N:
  var ai=0
  for (u,v) in e:
    if (i shr u and 1)==(i shr v and 1): ai+=1
  a.min=ai
echo a