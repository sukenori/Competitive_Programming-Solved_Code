include atcoder/extra/header/chaemon_header
let N,M=nextInt()
var s:HashSet[int]
for _ in 1..N:
  A:=nextInt()
  for i in 2..A.float.sqrt.int:
    while A%i==0: s.incl(i); A//=i
  if A>1: s.incl(A)
a:=(1..M).toSeq.toHashSet
for si in s:
  j:=si
  while j<=M: a.excl(j); j+=si
echo (@[a.len]&a.toSeq.sorted).join("\n")