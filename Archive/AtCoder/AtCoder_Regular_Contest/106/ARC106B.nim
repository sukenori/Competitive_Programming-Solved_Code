include atcoder/header
let N,M=nextInt()
let A,B=newSeqWith(N,nextInt())
import atcoder/dsu
var u=initDSU(N)
for _ in 1..M:
  let c,d=nextInt()-1
  u.merge(c,d)
var f=true
for ui in u.groups:
  var a,b:int
  for j in ui: a+=A[j]; b+=B[j]
  if a!=b: f=false
echo if f: "Yes" else: "No"