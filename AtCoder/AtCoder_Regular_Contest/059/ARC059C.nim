include atcoder/header
let N=nextInt()
let a=newSeqWith(N,nextInt())
var A=int.inf
for i in -100..100:
  var c=0
  for ai in a: c+=(ai-i)^2
  A.min=c
echo A