include atcoder/extra/header/chaemon_header
let
  N=nextInt()
  T=nextString()
  S=Seq[N:nextString()]
var
  f,b=Seq[N:0]
  j,k:int
for i,Si in S:
  j=0; k=0
  while j<T.len and k<Si.len:
    if T[j]==Si[k]: j+=1
    k+=1
  f[i]=j
  j=0; k=0
  while j<T.len and k<Si.len:
    if T[^(j+1)]==Si[^(k+1)]: j+=1
    k+=1
  b[i]=j
b.sort
var a=0
for fi in f: a+=N-b.lowerBound(T.len-fi)
echo a