include atcoder/extra/header/chaemon_header
N:=nextInt()
p:=Seq[2*N:0]
for i in 1..N:
  let A,B=nextInt()-1
  p[min(A,B)]=i; p[max(A,B)]= -i
var d:Deque[int]; f:=false
for pi in p:
  if pi>0: d.addLast(pi)
  else:
    if pi != -d.popLast: f=true
echo if f: "Yes" else: "No"