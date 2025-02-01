include atcoder/header
let N=nextInt()
var X,Y=newSeq[int](N)
for i in 0..<N:
  let Xi,Yi=nextInt()
  X[i]=Xi; Y[i]=Yi
var l=newSeqWith(N,newSeq[int](N))
for i in 0..<N-1:
  for j in i+1..<N:
    l[i][j]=(X[i]-X[j])^2+(Y[i]-Y[j])^2
    l[j][i]=l[i][j]
for i in 0..<N: echo l[i].maxIndex+1