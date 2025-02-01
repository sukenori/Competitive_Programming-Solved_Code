include atcoder/header
let N=nextInt()
var
  lT=nextInt()
  a=0
for i in 1..<N:
  let V,T=nextInt()
  a+=V
  a=max(0,a-(T-lT))
  lT=T
echo a+nextInt()