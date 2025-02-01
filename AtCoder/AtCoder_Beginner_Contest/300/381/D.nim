include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var c= @[(k:A[0],v:0)]
for Ai in A:
  if c[^1].k==Ai: c[^1].v+=1
  else: c.add((Ai,1))
var
  s:HashSet[int]
  r,a=0
for l in 0..<c.len:
  if c[l].v>=2:
    s.incl(c[l].k); r.max=l
    while r<c.len-1 and c[r+1].v>=2 and c[r+1].k notin s:
      r+=1; s.incl(c[r].k); if c[r].v>2: break
    a.max=s.len*2
    s.excl(c[l].k)
echo a