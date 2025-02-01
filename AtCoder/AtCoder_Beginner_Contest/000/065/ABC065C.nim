include atcoder/header
let N,M=nextInt()
import atcoder/modint
type mint=modint1000000007
var a=1.mint
if abs(N-M)>1: echo 0
else:
  for i in 1..N: a*=i
  for i in 1..M: a*=i
  if N==M: a*=2
  echo a