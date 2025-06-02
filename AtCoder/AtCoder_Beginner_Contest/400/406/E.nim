include atcoder/header
import atcoder/modint
type mint=modint998244353
var c,s=newSeqWith(61,newSeq[mint](61))
c[0][0]=1
for i in 0..<60:
  for j in 0..i:
    c[i+1][j+1]+=c[i][j]
    s[i+1][j+1]+=s[i][j]
    s[i+1][j+1]+=c[i][j]*2.mint.pow(i)
    c[][]

let T=nextInt()
for _ in 1..T:
  let N,K=nextInt()
  for i in 0..<60:
    if (N shr i and 1)==1:
      s(i,K-(i-1))