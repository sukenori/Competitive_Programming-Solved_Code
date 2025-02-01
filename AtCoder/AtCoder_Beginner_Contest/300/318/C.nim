include atcoder/header
let N,D,P=nextInt()
var F=newSeqWith(N,nextInt())
F.setLen(4*10^5)
F.sort(Descending)
var
  i=0
  a=0
while true:
  if F[D*i..<D*(i+1)].sum>P: a+=P; i+=1
  else: break
echo a+F[D*i..^1].sum