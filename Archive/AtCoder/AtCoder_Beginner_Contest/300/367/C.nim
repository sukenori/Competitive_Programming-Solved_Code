include atcoder/header
let
  N,K=nextInt()
  R=newSeqWith(N,nextInt())
var a=newSeqWith(N,1)
while true:
  if a.sum mod K==0: echo a.join(" ")
  a[^1]+=1
  for i in 1..<N:
    if a[^i]>R[^i]: a[^(i+1)]+=1; a[^i]=1
  if a[0]>R[0]: break