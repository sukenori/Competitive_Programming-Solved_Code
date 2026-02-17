include atcoder/header
let N,T=nextInt()
var r,c=newSeqWith(N,0)
var x=newSeqWith(2,0)
var a= -1
for i in 1..T:
  let A=nextInt()-1
  let
    d=A div N
    m=A mod N
  r[d]+=1; if r[d]==N: a=i; break
  c[m]+=1; if c[m]==N: a=i; break
  if d==m:
    x[0]+=1; if x[0]==N: a=i; break
  if d+m==N-1:
    x[1]+=1; if x[1]==N: a=i; break
echo a