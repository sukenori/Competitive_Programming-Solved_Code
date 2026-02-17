include atcoder/header
let N,M=nextInt()
var g=newSeq[seq[int]](N)
for _ in 1..M:
  let X,Y=nextInt()-1
  g[Y].add(X)
import deques
var b=newSeq[bool](N)
let Q=nextInt()
for _ in 1..Q:
  let q,v=nextInt()
  if q==1:
    if not b[v-1]:
      var d=[v-1].toDeque
      b[v-1]=true
      while d.len>0:
        let u=d.popLast
        for v in g[u]:
          if not b[v]:
            b[v]=true
            d.addLast(v)
  else: echo if b[v-1]: "Yes" else: "No"