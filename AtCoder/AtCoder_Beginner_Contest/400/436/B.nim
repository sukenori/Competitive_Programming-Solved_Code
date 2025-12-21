include atcoder/header
let N=nextInt()
var a=newSeqWith(N,newSeq[int](N))
var
  r=0
  c=(N-1) div 2
  k=1
a[r][c]=k
for _ in 1..N^2-1:
  var
    nr=(r+N-1) mod N
    nc=(c+1) mod N
  if a[nr][nc]==0: a[nr][nc]=k+1
  else:
    nr=(r+1) mod N
    nc=c
    a[nr][nc]=k+1
  r=nr
  c=nc
  k+=1
for i in 0..<N:
  echo a[i].join(" ")