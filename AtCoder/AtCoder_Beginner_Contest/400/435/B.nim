include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var a=0
for l in 0..<N:
  for r in l..<N:
    var f=true
    for i in l..r:
      if A[l..r].sum mod A[i]==0: f=false
    if f: a+=1
echo a