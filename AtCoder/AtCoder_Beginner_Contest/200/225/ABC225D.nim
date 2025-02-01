include atcoder/header
let N,Q=nextInt()
var b,f=newSeqWith(N+1,0)
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let x,y=nextInt()
    b[x]=y; f[y]=x 
  elif q==2:
    let x,y=nextInt()
    b[x]=0; f[y]=0
  else:
    var x=nextInt()
    while f[x]>0: x=f[x]
    var a= @[x]
    while b[a[^1]]>0: a.add(b[a[^1]])
    echo a.len," ",a.join(" ")