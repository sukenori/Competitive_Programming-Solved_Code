include atcoder/header
let X=nextInt()
var
  i=2
  f=1
  t:Table[int,int]
while true:
  if f>3*10^18 div i: break
  f*=i; t[f]=i; i+=1
echo t[X]