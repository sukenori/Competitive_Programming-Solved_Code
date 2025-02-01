include atcoder/extra/header/chaemon_header
let H,W=nextInt()
import atcoder/dsu
d:=initDSU(H*W)
S:=Seq[H:nextString()]
import atcoder/extra/other/direction
r:=0
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='#':
      for (ni,nj) in (i,j).neighbor(dir4,(0..<H,0..<W)):
        if S[ni][nj]=='#': d.merge(ni*W+nj,i*W+j)
    else: r+=1
l:=d.groups.len-r
import atcoder/modint
type mint=modint998244353
b:=r.mint; t:=0.mint
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='.':
      var s:HashSet[int]
      for (ni,nj) in (i,j).neighbor(dir4,(0..<H,0..<W)):
        if S[ni][nj]=='#': s.incl(d.leader(ni*W+nj))
      t+=l+1-s.len
echo t/b