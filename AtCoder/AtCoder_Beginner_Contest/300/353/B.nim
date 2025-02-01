include atcoder/header
let N,K=nextInt()
var
  l=K
  a=1
for _ in 1..N:
  let A=nextInt()
  if l>=A: l-=A
  else: a+=1; l=K-A
echo a