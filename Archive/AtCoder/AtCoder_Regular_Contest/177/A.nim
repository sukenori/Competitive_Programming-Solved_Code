include atcoder/header
var C=newSeqWith(6,nextInt())
let N=nextInt()
let c=[1,5,10,50,100,500]
for i in 0..<N:
  var X=nextInt()
  for j in countdown(5,0):
    while X>=c[j] and C[j]>0:
      X-=c[j]; C[j]-=1
  if X>0: echo "No"; quit()
echo "Yes"