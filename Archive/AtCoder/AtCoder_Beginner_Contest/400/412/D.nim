include atcoder/header
let N,M=nextInt()
var e,s:HashSet[(int,int)]
proc m(A,B:int):(int,int)=(min(A,B),max(A,B))
for _ in 1..M:
  let A,B=nextInt()
  e.incl(m(A,B))
var
  p=(1..N).toSeq
  a=int.inf
proc c(b,e:int)=
  for i in b..<e: s.incl(m(p[i],p[i+1]))
  s.incl(m(p[e],p[b]))
while true:
  s.clear
  c(0,N-1)
  a.min=((e-s)+(s-e)).len
  for i in 3..N-3:
    s.clear
    c(0,i-1); c(i,N-1)
    a.min=((e-s)+(s-e)).len
  if not p.nextPermutation(): break
echo a