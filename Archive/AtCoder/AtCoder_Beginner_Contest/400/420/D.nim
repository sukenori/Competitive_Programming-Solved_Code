include atcoder/header
let H,W=nextInt()
var
  A=newSeqWith(2,newSeqWith(H,newSeq[char](W)))
  S,G:(int,int)
for i in 0..<H:
  let Ai=nextString()
  for j in 0..<W:
    A[0][i][j]=Ai[j]
    if A[0][i][j]=='o': A[1][i][j]='x'
    elif A[0][i][j]=='x': A[1][i][j]='o'
    else:
      A[1][i][j]=A[0][i][j]
      if A[0][i][j]=='S': S=(i,j)
      if A[0][i][j]=='G': G=(i,j)
import deques
var
  q=[(0,S[0],S[1])].toDeque
  d=newSeqWith(2,newSeqWith(H,newSeqWith(W,-1)))
d[0][S[0]][S[1]]=0
while q.len>0:
  let (k,i,j)=q.popFirst
  for (di,dj) in [(-1,0),(0,1),(1,0),(0,-1)]:
    let (ni,nj)=(i+di,j+dj)
    if ni in 0..<H and nj in 0..<W and A[k][ni][nj]!='#' and A[k][ni][nj]!='x':
      if (ni,nj)==G: echo d[k][i][j]+1; quit()
      if A[k][ni][nj]!='?' and d[k][ni][nj] == -1:
        d[k][ni][nj]=d[k][i][j]+1; q.addLast((k,ni,nj))
      if A[k][ni][nj]=='?' and d[1-k][ni][nj] == -1:
        d[1-k][ni][nj]=d[k][i][j]+1; q.addLast((1-k,ni,nj))
echo -1