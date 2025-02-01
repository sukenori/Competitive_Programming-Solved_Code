include atcoder/header
let
  N=nextInt()
  S=nextString()
import atcoder/modint
type mint=modint1000000007
var a=1.mint
var j:int; for i,Si in S:
  if i>0 and S[i-1]!=Si: j+=1
  else:
    if j>=3: a*=(j-1) div 2+1
    j=1
  if i==S.len-1:
    if j>=3: a*=(j-1) div 2+1
echo a