include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextInt())
var c:Table[(int,int),int]
for Ai in A:
  for j in 1..10:
    let mj=((Ai mod M)*(10^j mod M) mod M,j)
    if c.hasKeyOrPut(mj,1): c[mj]+=1
var a=0
for Ai in A:
  let mi=(M-Ai mod M) mod M
  if c.hasKey((mi,($Ai).len)): a+=c[(mi,($Ai).len)]
echo a