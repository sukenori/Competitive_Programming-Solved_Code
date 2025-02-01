include atcoder/extra/header/chaemon_header
let N=nextInt()
var a="-".repeat(N+1)
for i in 0..N:
  var s=10
  for j in 9.countdown(1):
    if N%j==0 and i%(N//j)==0: a[i]=($j)[0]
echo a