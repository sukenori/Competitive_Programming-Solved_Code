include atcoder/header
let N,X=nextInt()
let S=nextString()
import deques
var s:Deque[char]
for Si in S:
  if s.len>0 and (s.peekLast=='L' or  s.peekLast=='R') and Si=='U': s.popLast
  else: s.addLast(Si)
var a=X
for si in s:
  if si=='U': a=a div 2
  if si=='L': a=a*2
  if si=='R': a=a*2+1
echo a