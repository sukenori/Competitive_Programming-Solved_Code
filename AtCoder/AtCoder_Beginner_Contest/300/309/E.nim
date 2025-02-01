include atcoder/extra/header/chaemon_header
let N,M=nextInt()
g:=Seq[N,0:int]
for i in 1..<N: g[nextInt()-1].add(i)
d:=Seq[N:0]
for _ in 1..M: d[nextInt()-1]=nextInt()+1

q:=[0].toDeque
  
  while q.len>0:
    i:=q.popFirst
    for j in g[i]:
      if d[i]>1:
        q.addLast(j)
        d[j]=d[i]-1
echo N-d.count(0)