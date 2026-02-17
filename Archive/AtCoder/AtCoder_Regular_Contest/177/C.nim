include atcoder/header
let N=nextInt()
let c=newSeqWith(N,nextString()).mapIt(it.toSeq.mapIt(if it=='R': 0 else: 1))
var p=newSeqWith(2,newSeqWith(N,newSeqWith(N,int.inf)))
import deques
for n in 0..1:
  var q:Deque[(int,int)]
  if n==0:
    p[0][0][0]=0; q.addLast((0,0))
  else:
    p[1][0][N-1]=0; q.addLast((0,N-1))
  while q.len>0:
    let (i,j)=q.popFirst
    for (di,dj) in [(-1,0),(0,1),(1,0),(0,-1)]:
      let (ni,nj)=(i+di,j+dj)
      if ni in 0..<N and nj in 0..<N:
        if c[ni][nj]==n and p[n][ni][nj]>p[n][i][j]:
          p[n][ni][nj]=p[n][i][j]; q.addLast((ni,nj))
        if c[ni][nj]!=n and p[n][ni][nj]>p[n][i][j]+1:
           p[n][ni][nj]=p[n][i][j]+1; q.addLast((ni,nj))
echo p[0][N-1][N-1]+p[1][N-1][0]