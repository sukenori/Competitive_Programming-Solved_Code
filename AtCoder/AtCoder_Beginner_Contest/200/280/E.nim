include atcoder/header
import atcoder/modint
type mint=modint998244353
let N=nextInt()
let P=nextInt().mint
var t:Table[int,mint]
t[0]=0.mint; t[1]=1.mint
proc dp(i:int):mint=
  if t.hasKey(i): t[i]
  else:
    t[i]=P/100.mint*(dp(i-2)+1.mint)+(1.mint-P/100.mint)*(dp(i-1)+1.mint)
    t[i]
echo dp(N)