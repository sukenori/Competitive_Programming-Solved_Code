include atcoder/header
let N,C=nextInt()
var
  t=nextInt()
  a=1
for _ in 2..N:
  let T=nextInt()
  if T-t>=C: a+=1; t=T
echo a