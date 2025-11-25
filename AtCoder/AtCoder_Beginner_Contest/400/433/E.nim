include atcoder/header
import deques
let T=nextInt()
for _ in 1..T:
  let
    N,M=nextInt()
    X=newSeqWith(N,nextInt())
    Y=newSeqWith(M,nextInt())
  var
    f=true
    m=newSeqWith(N*M+1,initDeque[(int,int)]())
  if X.toCountTable.values.toSeq.anyit(it>1) or Y.toCountTable.values.toSeq.anyIt(it>1):
    f=false
  for i in 0..<N:
    for j in 0..<M:
      if X[i]==Y[j]: m[min(X[i],Y[j])].addFirst((i,j))
      else: m[min(X[i],Y[j])].addLast((i,j))
  var
    d:Deque[(int,int)]
    a=newSeqWith(N,newSeq[int](M))
  for i in countdown(N*M,1):
    if m[i].len>0:
      let (x,y)=m[i].popFirst; a[x][y]=i
      while m[i].len>0:
        let (x,y)=m[i].popFirst; d.addLast((x,y))
    elif d.len>0:
      let (x,y)=d.popFirst; a[x][y]=i
    else: f=false
  if f:
    echo "Yes"
    for i in 0..<N:
      echo a[i].join(" ")
  else: echo "No"