include atcoder/extra/header/chaemon_header
N:=nextInt()
var f:Table[int,int]
for i in 2..N.float.sqrt.int:
  while N%i==0:
    if f.hasKeyOrPut(i,1): f[i]+=1
    N//=i
if N>1: f[N]=1
a:=0
for fi in f.values:
  i:=fi; j:=1
  while i>=j: a+=1; i-=j; j+=1
echo a