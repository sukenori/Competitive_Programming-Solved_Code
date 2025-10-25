include atcoder/header
proc isqrt(n:int):int=
  var
    x=n
    nx=(x+1) div 2
  while x>nx: x=nx; nx=(x+n div x) div 2
  return x
let T=nextInt()
for _ in 1..T:
  let C,D=nextInt()
  var a=0
  for i in ($(C+1)).len..($(C+D)).len:
    a+=(C*10^i+min(C+D,10^i-1)).isqrt-(C*10^i+max(10^(i-1),C+1)-1).isqrt
  echo a