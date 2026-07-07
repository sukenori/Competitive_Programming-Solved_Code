include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=string.input
import atcoder/modint
type mint=modint998244353
var dp=Seq[N.len+1,2,3,1 shl 10:0.mint]
dp[0][0][0][0]=1.mint
for i in 1..N.len:
  for j in 0..1:
    for k in 0..2:
      for l in 0..<1 shl 10:
        for m in 0..9:
          let x=N[i-1].parseInt
          if j==0 and m>x: continue
          else: dp[i][(j.bool or m<x).int][(k+m) mod 3][if l==0 and m==0: 0 else: l or (1 shl m)]+=dp[i-1][j][k][l]
var a=0.mint
for j in 0..1:
  for k in 0..2:
    for l in 0..<1 shl 10:
      if k==0 and (l shr 3 and 1)!=1 and l.count!=3: a+=dp[N.len][j][k][l]
      if k!=0 and (l shr 3 and 1)==1 and l.count!=3: a+=dp[N.len][j][k][l]
      if k!=0 and (l shr 3 and 1)!=1 and l.count==3: a+=dp[N.len][j][k][l]       
echo a-1