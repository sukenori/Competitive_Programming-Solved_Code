include atcoder/header
let T=nextInt()
import deques
for _ in 1..T:
  let N=nextInt()
  var S=nextString().toDeque
  if S[^1]=='B':
    while S[^1]=='B': S.popLast
    while S[^1]=='A': S.popLast
  echo if S.len==0: "B" else: "A"