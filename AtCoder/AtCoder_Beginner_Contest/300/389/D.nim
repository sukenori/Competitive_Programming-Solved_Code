include atcoder/header
let R=nextInt()
var
  a=0
  x0:int
  #r0:int
for i in 0..<R:
  let y=i.float+0.5
  var
    l=0
    r=R
  while r-l>1:
    let m=(l+r) div 2
    if (m.float+0.5)*(m.float+0.5)+y*y<R.float*R.float: l=m
    else: r=m
  a+=r
  if i==0: x0=r
  #if r==i: break
echo a*4-3-(x0-1)*4