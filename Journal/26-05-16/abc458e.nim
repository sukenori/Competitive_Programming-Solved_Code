include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  X1,X2,X3=int.input
  n=X1+X2+X3
import atcoder/modint
type mint=modint998244353
var k=Seq[3*10^6+1:mint]
k[0]=1.mint; k[1]=1.mint
for i in 2..10^6: k[i]=k[i-1]*i
echo k[n]/k[X1]/k[X2]/k[X3]-k[n-1]/k[X1-1]/k[X2]/k[X3-1]*2
