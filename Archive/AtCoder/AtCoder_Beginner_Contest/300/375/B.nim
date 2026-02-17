include atcoder/header
let N=nextInt()
var X,Y=newSeq[int](N+2)
for i in 1..N:
  let Xi,Yi=nextInt()
  X[i]=Xi; Y[i]=Yi
var a=0.0
for i in 0..N:
  a+=((X[i+1]-X[i])^2+(Y[i+1]-Y[i])^2).float.sqrt
echo a