include atcoder/header
import deques
var
  s=[0].toDeque
  p=0
let Q=nextInt()
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let c=nextString()
    if c=="(": s.addLast(s.peekLast+1)
    else: s.addLast(s.peekLast-1)
    if s.peekLast<0 and p==0: p=s.len-1
  else:
    s.popLast
    if s.len==p: p=0
  echo if s.peekLast==0 and p==0: "Yes" else: "No"