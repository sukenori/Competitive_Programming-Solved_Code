include atcoder/extra/header/chaemon_header
N:=nextInt()
import atcoder/dsu
d:=initDSU(N)
s:= @int
for _ in 1..N-1:
  let u,v=nextInt()-1
  if u!=0: d.merge(u,v)
  else: s.add(v)
a:= @[0]
for i in s: a.add(d.size(i))
echo a.sorted[0..^2].sum+1