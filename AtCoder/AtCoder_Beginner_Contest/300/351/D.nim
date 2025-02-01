include atcoder/header
let H,W=nextInt()
let S=newSeqWith(H,nextString())
var g=newSeqWith(H*W,newSeq[int](0))
import atcoder/extra/other/direction
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='.':
      for (ni,nj) in (i,j).neighbor(dir4,(0..<H,0..<W)):
        if S[ni][nj]=='.': g[i*W+j].add(ni*W+nj)
        else: g[i*W+j]=newSeq[int](0); break
var d=newSeqWith(H*W,-1)
var a,ai=0
proc dfs(i,j:int)=
  if d[j]!=i:
    d[j]=i; ai+=1
    for k in g[j]:
      if d[k]!=i: dfs(i,k)
for i in 0..<H*W:
  if d[i] == -1:
    ai=0; dfs(i,i)
    a.max=ai
echo a