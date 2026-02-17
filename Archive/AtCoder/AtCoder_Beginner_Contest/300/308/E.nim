include atcoder/extra/header/chaemon_header
N:=nextInt()
A:=Seq[N:nextInt()]
S:=nextString()
var M,X=Seq[N,3:0]; E := @int
for i,Si in S:
  if Si=='M': M[i][A[i]]+=1
  if Si=='E': E.add(i)
  if Si=='X': X[i][A[i]]+=1
for i in 1..<N:
  for j in 0..2:
    M[i][j]+=M[i-1][j]
    X[^(i+1)][j]+=X[^i][j]
a:=0
for Ei in E:
  for Mi in 0..2:
    for Xi in 0..2:
      s:=[0,1,2,3].toHashSet
      s.excl(Mi); s.excl(A[Ei]); s.excl(Xi)
      a+=s.toSeq.sorted[0]*M[Ei][Mi]*X[Ei][Xi]
echo a