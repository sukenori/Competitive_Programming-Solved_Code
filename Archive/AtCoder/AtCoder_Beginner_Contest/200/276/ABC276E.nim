include atcoder/extra/header/chaemon_header
let H,W=nextInt()
C:=Seq[H:nextString()]
var s:seq[int]
import atcoder/extra/other/direction
for i,Ci in C:
  if 'S' in Ci:
    for (ni,nj) in (i,Ci.find('S')).neighbor(dir4,(0..<H,0..<W)):
      if C[ni][nj]=='.': s.add(W*ni+nj)
import atcoder/dsu
uf:=initDSU(H*W)
d:=Seq[H*W:false]
proc dfs(i:int)=
  d[i]=true
  for (ni,nj) in (i//W,i%W).neighbor(dir4,(0..<H,0..<W)):
    if not d[W*ni+nj] and C[ni][nj]=='.':
      uf.merge(i,W*ni+nj); dfs(W*ni+nj)
for si in s: dfs(si)
var a:seq[int]
for si in s: a.add(uf.leader(si))
echo if a.toHashSet.len<a.len: "Yes" else: "No"