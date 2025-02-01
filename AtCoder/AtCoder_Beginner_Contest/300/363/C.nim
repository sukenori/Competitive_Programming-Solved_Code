include atcoder/header
let N,K=nextInt()
var
  S=nextString().toSeq.sorted
  a=0
while true:
  a+=1
  for i in 0..N-K:
    if S[i..i+K-1]==S[i..i+K-1].reversed: a-=1; break
  if not S.nextPermutation(): break
echo a