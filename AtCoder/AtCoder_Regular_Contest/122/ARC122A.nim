include atcoder/header
let N=nextInt()
import atcoder/modint
type mint=modint1000000007
var c0,c1,s0,s1:mint
(c0,c1)=(1,0)
(s0,s1)=(nextInt(),0)
for _ in 1..<N:
  let
    A=nextInt().mint
    nc0=c0+c1
    nc1=c0
    ns0=s0+s1+A*nc0
    ns1=s0-A*nc1
  (c0,c1,s0,s1)=(nc0,nc1,ns0,ns1)
echo s0+s1