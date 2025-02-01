include atcoder/header
let N,X=nextInt()
var
  a=int.inf
  s=0
for i in 1..N:
  let A,B=nextInt()
  s+=A+B
  if i<=X: a.min=s+B*(X-i)
echo a