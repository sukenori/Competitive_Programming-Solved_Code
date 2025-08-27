include atcoder/header
let N,Q=nextInt()
var
  AB=newSeq[(int,int)](N)
  s=0
for i in 0..<N:
  let A=nextInt()
  AB[i][0]=A
for i in 0..<N:
  let B=nextInt()
  AB[i][1]=B
  s+=min(AB[i][0],AB[i][1])
for _ in 1..Q:
  let
    c=nextString()
    X,V=nextInt()
  if c=="A":
    s-=min(AB[X-1][0],AB[X-1][1])-min(V,AB[X-1][1])
    AB[X-1][0]=V
  else:
    s-=min(AB[X-1][0],AB[X-1][1])-min(AB[X-1][0],V)
    AB[X-1][1]=V
  echo s