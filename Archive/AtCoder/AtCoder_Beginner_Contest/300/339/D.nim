include atcoder/extra/header/chaemon_header
N:=nextInt()
S:=Seq[N:nextString()]
var p0,p1= -1
for i in 0..<N*N:
  if S[i//N][i%N]=='P':
    if p0 == -1: p0=i else: p1=i
d:=Seq[N*N,N*N:int.inf]; d[p0][p1]=0
q:=[(p0,p1)].toDeque
a:=int.inf
while q.len>0:
  i:=q.popFirst
  for (di,dj) in [(-1,0),(0,1),(1,0),(0,-1)]:
    proc f(i:int):int=
      ni:=i//N+di; nj:=i%N+dj
      if [ni,nj].anyIt(it notin 0..<N) or S[ni][nj]=='#': i
      else: ni*N+nj
    ni0:=f(i[0]); ni1:=f(i[1])
    if d[ni0][ni1]==int.inf:
      d[ni0][ni1]=d[i[0]][i[1]]+1
      q.addLast((ni0,ni1))
      if ni0==ni1: a.min=d[ni0][ni1]
echo if a!=int.inf: a else: -1