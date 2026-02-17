include atcoder/header
let N,K=nextInt()
var g=newSeqWith(N*K,newSeq[int]())
for _ in 1..<N*K:
  let u,v=nextInt()-1
  g[u].add(v); g[v].add(u)
proc dfs(p,i:int):int=
  var v:seq[int]
  for j in g[i]:
    if j!=p:
      let vj=dfs(i,j)
      if vj>0: v.add(vj)
  if v.len==0: return 1
  elif v.len==1: return (1+v[0]) mod K
  elif v.len==2 and v.sum==K: return 0 
  else: echo "No"; quit()
echo if dfs(-1,0)==0: "Yes" else: "No"