include atcoder/header
var
  S=nextString().toSeq
  T=nextString().toSeq
  X=newSeq[seq[char]]()
for i in 0..<S.len:
  if S[i]>T[i]: S[i]=T[i]; X.add(S)
for i in 1..S.len:
  if S[^i]<T[^i]: S[^i]=T[^i]; X.add(S)
echo X.len
for i in 0..<X.len: echo X[i].join