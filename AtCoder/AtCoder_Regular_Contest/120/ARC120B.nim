include atcoder/header
let H,W=nextInt()
let S=newSeqWith(H,nextString())
import atcoder/modint
type mint=modint998244353
var a=1.mint
for i in 0..H-1+W-1:
  var s:HashSet[char]
  for h in 0..i:
    let w=i-h
    if h in 0..<H and w in 0..<W: s.incl(S[h][w])
  if s.len==1 and '.' in s: a*=2
  if 'R' in s and 'B' in s: echo 0; quit()
echo a