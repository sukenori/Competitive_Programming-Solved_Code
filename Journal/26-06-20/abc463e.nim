include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,M,Y=int.input
var g=Seq[N+1:seq[(int,int)]]
loop M:
  let u,v,T=int.input
  g[u-1].add((v-1,T)); g[v-1].add((u-1,T))
let X=Seq[N:int.input]
for i in 0..<N:
  g[i].add((N,X[i])); g[N].add((i,X[i]+Y))
var
  q=[(0,0)].toHeapQueue
  a=int.inf.repeat(N+1)
  d=false.repeat(N+1)
a[0]=0
while q.len>0:
  let (t,u)=q.pop
  if not d[u]:
    d[u]=true
    for (v,T) in g[u]:
      if t+T<a[v]: a[v]=t+T; q.push((t+T,v))
echo a[1..<N].join(" ")