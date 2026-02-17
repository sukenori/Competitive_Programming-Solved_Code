include atcoder/extra/header/chaemon_header
let
  N=nextInt()
  S=nextString()
for i in 0..<N-1:
  if S[i]!='1' and S[i+1]!='1': echo -1; quit()
import atcoder/modint
type mint=modint998244353
var a:mint=0
for i in 1..<N:
  a+=1
  a+=(S[^i]-'0'-1)*a
echo a