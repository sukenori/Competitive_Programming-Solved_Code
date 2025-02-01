include atcoder/header
let Q=nextInt()
var t:Table[int,int]
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let x=nextInt()
    if t.hasKeyOrPut(x,1): t[x]+=1
  elif q==2:
    let x=nextInt()
    t[x]-=1
    if t[x]==0: t.del(x)
  else:
    echo t.len