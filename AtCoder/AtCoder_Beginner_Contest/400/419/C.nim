include atcoder/header
let N=nextInt()
var R,C=newSeq[int](N)
for i in 0..<N:
  let Ri,Ci=nextInt()
  R[i]=Ri; C[i]=Ci
let
  r=(R.max+R.min) div 2
  c=(C.max+C.min) div 2
var a=0
for i in 0..<N:
  a.max=max(abs(R[i]-r),abs(C[i]-c))
echo a