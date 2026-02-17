include atcoder/header
let N=nextInt()
var S=nextString().toSeq
let Q=nextInt()
var t:Table[char,char]
for _ in 1..Q:
  let c,d=nextString()[0]
  if not t.hasKey(c): t[c]=d
  for k,v in t.pairs:
    if v==c: t[k]=d
for i in 0..<N:
  if t.hasKey(S[i]): S[i]=t[S[i]]
echo S.join