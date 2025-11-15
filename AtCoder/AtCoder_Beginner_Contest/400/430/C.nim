include atcoder/header
let
  N,A,B=nextInt()
  S=nextString()
  a=(@[0]&S.mapIt((it=='a').int)).cumsummed
  b=(@[0]&S.mapIt((it=='b').int)).cumsummed
var
  ra,rb=1
  c=0
for l in 0..<N:
  while ra<=N and a[ra]-a[l]<A: ra+=1
  while rb<N and b[rb+1]-b[l]<B: rb+=1
  if ra<=rb: c+=rb-ra+1
echo c