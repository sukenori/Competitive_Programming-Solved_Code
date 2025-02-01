include atcoder/header
let N=nextInt()
let n=N*(N-1) div 2+1
var g=newSeqWith(n,newSeq[int](0))
proc f(i,j:int):int=
  let (i,j)=if i>j: (i,j) else: (j,i)
  i*(i-1) div 2+j+1
for i in 0..<N:
  var l=0
  for j in 0..<N-1:
    let A=nextInt()-1
    let t=f(i,A)
    g[l].add(t)
    l=t
var l=newSeqWith(n,0)
var d=newSeqWith(n,false)
proc dfs(i:int):int=
  if l[i]>0: return l[i]
  d[i]=true
  for j in g[i]:
    if d[j]: echo -1; quit()
    result.max=dfs(j)+1
  l[i]=result
  d[i]=false
echo dfs(0)