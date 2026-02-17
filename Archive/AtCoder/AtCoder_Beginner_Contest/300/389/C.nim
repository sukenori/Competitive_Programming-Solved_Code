include atcoder/header
let Q=nextInt()
import deques
var
  d:Deque[int]
  c= @[0]
  r=0
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let l=nextInt()
    d.addLast(l); c.add(c[^1]+l)
  if q==2:
    let ri=d.popFirst; r+=ri
  if q==3:
    let k=nextInt()
    echo c[k-1+(c.len-1-d.len)]-r