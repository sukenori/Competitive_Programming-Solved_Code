include atcoder/header
let H,W=nextInt()
var
  S=newSeqWith(H,newSeq[int](W))
  d:HashSet[(int,int)]
for i in 0..<H:
  for j,Sj in nextString():
    if Sj=='#': S[i][j]=1; d.incl((i,j))
iterator f(i,j:int):(int,int)=
  for (di,dj) in [(-1,0),(0,1),(1,0),(0,-1)]:
    let (ni,nj)=(i+di,j+dj)
    if ni in 0..<H and nj in 0..<W: yield (ni,nj)
while true:
  var nd:HashSet[(int,int)]
  for (i,j) in d:
    for (ni,nj) in f(i,j):
      if S[ni][nj]!=1:
        var c=0
        for (nni,nnj) in f(ni,nj): c+=S[nni][nnj]
        if c==1: nd.incl((ni,nj))
  if nd.len==0: break
  for (i,j) in nd: S[i][j]=1
  d=nd
echo S.mapIt(it.sum).sum