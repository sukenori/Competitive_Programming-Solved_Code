include atcoder/header
let S=nextString()
var c= @[(k:S[0],v:0)]
for Si in S:
  if c[^1].k==Si: c[^1].v+=1
  else: c.add((Si,1))
let t=S.toCountTable
echo if c.allIt(it.v==2) and t.values.toSeq.allIt(it==2): "Yes" else: "No"