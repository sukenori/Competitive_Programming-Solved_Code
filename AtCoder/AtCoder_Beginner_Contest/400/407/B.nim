include atcoder/header
let X,Y=nextInt()
var a=0.0
for i in 1..6:
  for j in 1..6:
    if i+j>=X or abs(i-j)>=Y: a+=1.0/36.0
echo a