include atcoder/header
let X=nextInt()
var a=0
for i in 1..9:
  for j in 1..9:
    if i*j!=X: a+=i*j
echo a