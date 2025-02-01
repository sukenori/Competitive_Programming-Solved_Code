include atcoder/extra/header/chaemon_header
let N,M=nextInt()
X:=Seq[3: @int]
for _ in 0..<N: X[nextInt()].add(nextInt())
X[0]=X[0].sorted(Descending)[0..<min(X[0].len,M)]
X[1].sort; X[2].sort
s:=M-X[0].len; l:=0; ai:=X[0].sum; a:=ai
while true:
  if s==0:
    if X[0].len==0: break
    s=1; ai-=X[0].pop
  elif s>0 and l==0:
    if X[2].len==0: break
    s-=1; l=X[2].pop
  elif s>0 and l>0:
    if X[1].len==0: break
    l-=1; s-=1; ai+=X[1].pop
  a.max=ai
echo a