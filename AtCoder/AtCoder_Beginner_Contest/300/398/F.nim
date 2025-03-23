include atcoder/header
let S=nextString()
import deques
var
  l,r:Deque[char]
  p=0
for i,Si in S.reversed:
  l.addFirst(Si); r.addLast(Si)
  if l.toSeq==r.toSeq: p.max=i+1
echo S&S.toSeq[0..^(p+1)].reversed.join