include atcoder/header
import atcoder/modint
type mint=modint998244353
let N=nextInt()
var
  i=1
  s=(N+1)*N.mint/2.mint
while i<=N:
  let ni=N div (N div i)
  s-=(N div i)*(ni-i+1)
  i=ni+1
echo s