include atcoder/header
let N,M=nextInt()
let m=M.float.sqrt.int
var d:seq[(int,int)]
for i in 0..m:
  for j in i..m:
    if i^2+j^2==M: d.add((i,j))
var f=newSeqWith(N,newSeqWith(N,-1)); f[0][0]=0
import deques
var q=[(0,0)].toDeque
while q.len>0:
  let (i,j)=q.popFirst
  for d in d:
    var di=d[0]; var dj=d[1]
    for _ in 0..1:
      di= -di
      for _ in 0..1:
        dj= -dj
        for _ in 0..1:
          swap(di,dj)
          if i+di in 0..<N and j+dj in 0..<N and f[i+di][j+dj] == -1:
            f[i+di][j+dj]=f[i][j]+1
            q.addLast((i+di,j+dj))
echo f.mapIt(it.join(" ")).join("\n")