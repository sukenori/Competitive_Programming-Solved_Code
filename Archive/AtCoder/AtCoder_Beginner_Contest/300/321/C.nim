include atcoder/header
let K=nextInt()
var s:HashSet[int]
proc f(n,j:int)=
  if j>=0:
    s.incl(n)
    f(n*10+j-1,j-1)
    f(n,j-1)
for i in countdown(9,1): f(i,i)
echo s.toSeq.sorted[K-1]