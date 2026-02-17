include atcoder/header
let N=nextInt()
let A=newSeqWith(N,nextInt())
var a:seq[int]
for i in 1..<N:
  if A[i-1]>A[i]: a &= @[1,1]
  else: a &= @[0,0]
for i in 0..<a.len:
  if i==0 or i==a.len-1: stdout.write a[i]," "
  elif i mod 2==1: stdout.write a[i] xor a[i+1]," "