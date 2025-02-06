include atcoder/header
let S=nextString()
var c= @[(k:S[0],v:0)]
for Si in S:
  if c[^1].k==Si: c[^1].v+=1
  else: c.add((Si,1))
var a:seq[int]
for i in countup(0,c.len-1,2):
  let
    r=c[i].v
    l=c[i+1].v
  a&=0.repeat(r-1) & @[ceilDiv(r,2)+floorDiv(l,2),floorDiv(r,2)+ceilDiv(l,2)]&0.repeat(l-1)
echo a.join(" ")