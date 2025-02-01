include atcoder/header
let H,W,N=nextInt()
import atcoder/fenwicktree
var f=FenwickTreeType(int).init(26)
for _ in 1..N:
  let A=nextInt()
  f.add(A,(2^A)^2)
for i in 0..25:
  if (H div 2^i)*(W div 2^i)*((2^i)^2)<f[i..25]:
    echo "No"; quit()
echo "Yes"