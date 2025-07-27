include atcoder/header
let N,L,R=nextInt()
var a=0
for _ in 1..N:
  let X,Y=nextInt()
  if X<=L and R<=Y: a+=1
echo a