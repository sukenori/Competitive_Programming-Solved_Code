include atcoder/header
let
  H,W,K=nextInt()
  S=newSeqWith(H,nextString())
var
  d=newSeqWith(H,newSeqWith(W,false))
  c,a=0
proc dfs(i,j,c:int)=
  d[i][j]=true
  if c==K: a+=1
  else:
    for (di,dj) in [(-1,0),(0,1),(1,0),(0,-1)]:
      let (ni,nj)=(i+di,j+dj)
      if ni in 0..<H and nj in 0..<W and S[ni][nj]=='.' and not d[ni][nj] and c<K: dfs(ni,nj,c+1)
  d[i][j]=false
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='.': dfs(i,j,0)
echo a