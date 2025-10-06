include atcoder/header
let N,Q=nextInt()
var
  v=newSeqWith(N,1)
  m = -1
for i in 1..Q:
  let X,Y=nextInt()-1
  var a=0
  for j in m+1..X:
    a+=v[j]; v[j]=0
  echo a; v[Y]+=a; m.max=X