include atcoder/extra/header/chaemon_header
let N,L,R=nextInt()
a:=0
for i in 0..(10^18).toFloat.log2.floor.toInt:
  if (N shr i and 1)==1:
    a+=max(0,min(R,2^(i+1)-1)-max(2^i,L)+1)
echo a