include atcoder/header
let
  N=nextInt()
  n=($N).len
import atcoder/modint
type mint=modint998244353
echo N.mint*(1.mint-10.mint.pow(n).pow(N))/(1.mint-10.mint.pow(n))