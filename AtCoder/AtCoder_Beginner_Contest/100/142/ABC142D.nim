include atcoder/header
let A,B=nextInt()
var
  d=gcd(A,B)
  f:Table[int,int]
for i in 2..d.float.sqrt.int:
  while d mod i==0:
    if f.hasKeyOrPut(i,1): f[i]+=1
    d=d div i
if d>1: f[d]=1
echo f.len+1