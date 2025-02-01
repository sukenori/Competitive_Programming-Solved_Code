include atcoder/header
let N=nextInt()
var
  S=newSeq[string](N)
  l=0
for i in 0..<N:
  let Si=nextString()
  l.max=Si.len
  S[i]=Si&"*".repeat(l-Si.len)
for i in 0..<l:
  var a=""
  for j in countdown(N-1,0):
    if i<S[j].len: a &= S[j][i]
  echo a