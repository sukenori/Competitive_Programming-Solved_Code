include atcoder/extra/header/chaemon_header
var N,M,L=nextInt()
a:=Seq[N:nextInt()]
b:=Seq[M:(int,int)]
for i in 0..<M: b[i]=(i,nextInt())
b=b.sortedByIt(it[1]).reversed
var s:HashSet[(int,int)]
for _ in 1..L: s.incl((nextInt()-1,nextInt()-1))
p:=0
for i,ai in a:
  for bj in b:
    if (i,bj[0]) notin s: p.max=ai+bj[1]; break
echo p