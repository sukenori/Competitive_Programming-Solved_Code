include atcoder/header
let S=nextString().mapIt(($it).parseInt)
var c= @[(k:S[0],v:0)]
for Si in S:
  if c[^1].k==Si: c[^1].v+=1
  else: c.add((Si,1))
var a=0
for i in 0..<c.len-1:
  if c[i][0]+1==c[i+1][0]: a+=min(c[i][1],c[i+1][1])
echo a