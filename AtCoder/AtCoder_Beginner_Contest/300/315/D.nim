include atcoder/extra/header/chaemon_header
let
  H,W=nextInt()
  c=newSeqWith(H,nextString())
var
  w=[H,W]
  m=max(H,W)
  cc=newSeqWith(2,newSeqWith(m,newSeqWith(26,0)))
for i in 0..<H:
  for j in 0..<W:
    for k in 0..1:
      cc[k][i*(1-k)+j*k][c[i][j]-'a']+=1
var f=true; while f:
  f=false
  var d=newSeq[seq[int]](2)
  for i in 0..<m:
    for j in 0..<26:
      for k in 0..1:
        if cc[k][i][j]==w[1-k] and w[1-k]>1:
          cc[k][i][j]=0; d[k].add(j); f=true
  for k in 0..1:
    for di in d[1-k]:
      w[1-k]-=1; for j in 0..<m:
        if cc[k][j][di]>0: cc[k][j][di]-=1
echo w[0]*w[1]