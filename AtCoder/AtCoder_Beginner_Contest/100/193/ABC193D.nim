include atcoder/header
let K=nextInt()
let S=nextString()[0..3].toSeq.mapIt(($it).parseInt).toCountTable
let T=nextString()[0..3].toSeq.mapIt(($it).parseInt).toCountTable
proc p(t:CountTable,c:int):int=
  for i in 1..9:
    result+=i*10^(t[i]+(if c==i: 1 else: 0))
var a=0.0
for i in 1..9:
  for j in 1..9:
    if p(S,i)>p(T,j):
      a+=((K-S[i]-T[i])*(K-S[j]-T[j]-(if j==i: 1 else: 0)))/((9*K-8)*(9*K-9))
echo a