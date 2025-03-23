include atcoder/header
let S=nextString()
import deques
var s:Deque[char]
for Si in S:
  if Si in "([<": s.addLast(Si)
  else:
    if s.len>0 and ")]>".find(Si)=="([<".find(s.peekLast): s.popLast
    else: s.addLast(Si)
echo if s.len==0: "Yes" else: "No"