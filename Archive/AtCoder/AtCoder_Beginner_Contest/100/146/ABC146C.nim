include atcoder/extra/header/chaemon_header
let A,B,X=nextInt()
a:=0
for i in 0..9:
  N:=(X-B*(i+1))//A
  if 10^(i+1)<=N: a=10^(i+1)-1
  elif 10^i<=N: a=N
echo min(a,10^9)