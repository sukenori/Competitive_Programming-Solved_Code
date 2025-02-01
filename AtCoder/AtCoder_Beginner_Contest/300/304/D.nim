include atcoder/extra/header/chaemon_header
let W,H=nextInt()
N:=nextInt()
s:=Seq[N:(p:nextInt(),q:nextInt())]
A:=nextInt()
a:=Seq[A:nextInt()]
B:=nextInt()
b:=Seq[B:nextInt()]
var c:Table[(int,int),int]
for si in s:
  p:=a.lowerBound(si.p); q:=b.lowerBound(si.q)
  if c.hasKeyOrPut((p,q),1): c[(p,q)]+=1
echo (if c.len<(A+1)*(B+1): 0 else: c.values.toSeq.min)," ",c.values.toSeq.max