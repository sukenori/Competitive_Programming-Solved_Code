include atcoder/extra/header/chaemon_header
N:=nextInt()
g:=Seq[N,N:0]
var i,j=0
v:=[(0,1),(1,0),(0,-1),(-1,0)]; d:=0
for k in 1..N^2:
  g[i][j]=k
  ni:=i+v[d][0]; nj:=j+v[d][1]
  if ni notin 0..<N or nj notin 0..<N or g[ni][nj]!=0:
    d=(d+1)%4
  i+=v[d][0]; j+=v[d][1]
for i in 0..<N:
  echo g[i].mapIt(if it== N*N:"T" else: $it).join(" ")