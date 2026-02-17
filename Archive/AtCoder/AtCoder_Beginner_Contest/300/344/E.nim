include atcoder/header
let N=nextInt()
let A = @[0]&newSeqWith(N,nextInt()) & @[int.inf]
var f,b:Table[int,int]
for i in 0..N+1:
  if i>0: f[A[i-1]]=A[i]
  if i<N+1: b[A[i+1]]=A[i]
let Q=nextInt()
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let x,y=nextInt()
    b[f[x]]=y
    b[y]=x
    f[y]=f[x]
    f[x]=y
  else:
    let x=nextInt()
    b[f[x]]=b[x]
    f[b[x]]=f[x]
var a = @[0]
while true:
  if f.hasKey(a[^1]): a.add(f[a[^1]])
  else: break
echo a[1..^2].join(" ")