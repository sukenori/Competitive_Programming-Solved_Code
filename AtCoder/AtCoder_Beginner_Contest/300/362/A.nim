include atcoder/header
var
  p=newSeqWith(3,nextInt())
  C=nextString()
p[["Red","Green","Blue"].find(C)]=int.inf
echo p.min