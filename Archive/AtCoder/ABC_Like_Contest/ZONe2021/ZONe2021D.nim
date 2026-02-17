include atcoder/header
let S=nextString()
import deques
var
  T:Deque[char]
  f=true
for Si in S:
  if Si=='R': f=not f
  else:
    if f:
      if T.len>0 and T.peekLast==Si: T.popLast
      else: T.addLast(Si)
    else:
      if T.len>0 and T.peekFirst==Si: T.popFirst
      else: T.addFirst(Si)
echo if f: T.toSeq.join else: T.toSeq.reversed.join