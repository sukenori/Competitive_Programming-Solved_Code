include atcoder/header
let N=nextInt()
var a=0
var o=1; while o<=N:
  var z=1; while o*z<=N:
    a+=min((o+1)*z-1,N)-(o*z-1)
    z*=10
  o=o*10+1
echo a