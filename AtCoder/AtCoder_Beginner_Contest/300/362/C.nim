include atcoder/header
let N=nextInt()
var L,R,X=newSeq[int](N)
for i in 0..<N:
  let Li,Ri=nextInt()
  L[i]=Li; R[i]=Ri
let
  Ls=L.sum
  Rs=R.sum
if Ls<=0 and 0<=Rs:
  var d=0-Ls
  for i in 0..<N:
    X[i]=L[i]+min(d,R[i]-L[i])
    d-=X[i]-L[i]
  echo "Yes"&"\n"&X.join(" ")
else: echo "No"