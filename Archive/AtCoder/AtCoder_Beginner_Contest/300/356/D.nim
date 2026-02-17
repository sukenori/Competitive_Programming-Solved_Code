include atcoder/header
let N,M=nextInt()
import atcoder/modint
type mint=modint998244353
var a=0.mint
for i in 0..<60:
  if ((M shr i) and 1)==1:
    a+=((N+1) div 2^(i+1))*2^i+max(0,(N+1) mod 2^(i+1)-2^i)
echo a