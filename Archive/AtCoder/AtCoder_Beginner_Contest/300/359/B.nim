include atcoder/header
let N=nextInt()
var
  t:Table[int,int]
  a=0
for i in 1..2*N:
  let A=nextInt()
  if A notin t: t[A]=i
  elif i-t[A]==2: a+=1
echo a