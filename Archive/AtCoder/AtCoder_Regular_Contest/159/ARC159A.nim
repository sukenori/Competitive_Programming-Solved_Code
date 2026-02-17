include atcoder/header
let N,K=nextInt()
var a=newSeqWith(N,newSeqWith(N,nextInt()))
import atcoder/extra/graph/warshall_floyd
for i in 0..<N:
  for j in 0..<N:
    if a[i][j]==0: a[i][j]=int.inf
let d=a.warshallFloyd
let Q=nextInt()
for _ in 1..Q:
  let s,t=nextInt()-1
  let a=d[s mod N][t mod N]
  echo if a!=int.inf: a else: -1