include atcoder/extra/header/chaemon_header
let N=nextInt()
var I=newTable[int,seq[int]]()
for i in 0..<N:
  let Fi,Si=nextInt()
  if I.hasKey(Fi): I[Fi].add(Si)
  else: I[Fi]=(@[Si])
var a:int
let m=I.values.toSeq.mapIt(max(it)).sorted
if m.len>1: a=m[^1]+m[^2]
for v in I.values:
  if v.len>1:
    let s=v.sorted
    a.max=s[^1]+s[^2]//2
echo a