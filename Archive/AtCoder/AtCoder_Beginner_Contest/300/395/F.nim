include atcoder/header
let N,X=nextInt()
var U,D=newSeq[int](N)
for i in 0..<N:
  let Ui,Di=nextInt()
  U[i]=Ui; D[i]=Di
var
  l=0
  h=10^9*2+1
while h-l>1:
  let m=(l+h) div 2
  var
    Umax=m
    Umin=0
    f=true
  for i in 0..<N:
    Umax=[Umax+X,U[i],m].min
    Umin=[0,Umin-X,m-D[i]].max
    if Umax<Umin: f=false 
  if f: l=m
  else: h=m
echo U.sum+D.sum-l*N