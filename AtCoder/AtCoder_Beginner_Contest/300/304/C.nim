include atcoder/extra/header/chaemon_header
let N,D=nextInt()
m:=Seq[N:(X:nextInt(),Y:nextInt())]
d:=Seq[N:false]; d[0]=true
q:=[0].toDeque
while q.len>0:
  i:=q.popFirst
  for j in 0..<N:
    if not d[j] and (m[j].X-m[i].X)^2+(m[j].Y-m[i].Y)^2<=D^2:
      d[j]=true; q.addLast(j)
for di in d: echo if di: "Yes" else: "No"