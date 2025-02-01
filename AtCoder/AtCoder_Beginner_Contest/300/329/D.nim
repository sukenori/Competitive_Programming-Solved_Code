include atcoder/extra/header/chaemon_header
let N,M=nextInt()
A:=Seq[M:nextInt()-1]
c:=Seq[N:0]
a:=0
for Ai in A:
  c[Ai]+=1
  if c[Ai]>c[a]: a=Ai
  elif c[Ai]==c[a] and Ai<a: a=Ai
  echo a+1