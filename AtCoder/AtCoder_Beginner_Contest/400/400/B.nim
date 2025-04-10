include atcoder/header
let N,M=nextInt()
var X=0
for i in 0..M:
  X+=N^i
  if X>10^9: echo "inf"; quit()
echo X