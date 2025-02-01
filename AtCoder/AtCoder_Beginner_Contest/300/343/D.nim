include atcoder/header
let N,T=nextInt()
var p=newSeqWith(N,0)
var s:Table[int,int]; s[0]=N
for _ in 1..T:
  let
    A=nextInt()-1
    B=nextInt()
  if s.hasKey(p[A]):
    s[p[A]]-=1
    if s[p[A]]==0: s.del(p[A])
  p[A]+=B
  if s.hasKeyOrPut(p[A],1): s[p[A]]+=1
  echo s.len