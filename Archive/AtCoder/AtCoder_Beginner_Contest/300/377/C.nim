include atcoder/header
let N,M=nextInt()
var s:HashSet[(int,int)]
proc f(i,j:int)=
  if i in 1..N and j in 1..N: s.incl((i,j))
for _ in 1..M:
  let a,b=nextInt()
  s.incl((a,b))
  f(a+2,b+1)
  f(a+1,b+2)
  f(a-1,b+2)
  f(a-2,b+1)
  f(a-2,b-1)
  f(a-1,b-2)
  f(a+1,b-2)
  f(a+2,b-1)
echo N*N-s.len