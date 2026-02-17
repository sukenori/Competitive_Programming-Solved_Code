include atcoder/header
let N=nextInt()
for d in 1..<N.float.cbrt.ceil.int:
  var c=d^3-N
  if c mod (3*d)==0:
    c=c div (3*d)
    let Y=(-d+(d^2-4*c).float.sqrt.int) div 2
    if Y^2+d*Y+c==0: echo Y+d," ",Y; quit()
echo -1