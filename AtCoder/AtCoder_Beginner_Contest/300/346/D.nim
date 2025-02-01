include atcoder/header
let N=nextInt()
let S=nextString().mapIt(($it).parseInt)
let C=newSeqWith(N,nextInt())
var c0,c1=C
for i in 0..<N:
  if (i mod 2 xor S[i])==0: c1[i]=0
  else: c0[i]=0
c0.cumsum; c1.cumsum
var a=int.inf
for i in 0..<N-1:
  a.min=c0[i]+c1[^1]-c1[i]
  a.min=c1[i]+c0[^1]-c0[i]
echo a