include atcoder/header
let
  N=nextInt()
  C=newSeqWith(N,nextString())
import deques
var
  q:Deque[(int,int)]
  A=newSeqWith(N,newSeqWith(N,-1))
for i in 0..<N: A[i][i]=0; q.addLast((i,i))
for i in 0..<N:
  for j in 0..<N:
    if i!=j and C[i][j]!='-': A[i][j]=1; q.addLast((i,j))
while q.len>0:
  let (i,j)=q.popFirst
  for k in 0..<N:
    for l in 0..<N:
      if C[k][i]!='-' and C[j][l]!='-' and C[k][i]==C[j][l] and A[k][l]== -1:
        A[k][l]=A[i][j]+2; q.addLast((k,l))
for i in 0..<N: echo A[i].join(" ")