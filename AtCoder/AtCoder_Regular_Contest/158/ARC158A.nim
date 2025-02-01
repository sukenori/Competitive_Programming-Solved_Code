include atcoder/header
let T=nextInt()
for _ in 1..T:
  let x=newSeqWith(3,nextInt()).sorted
  if (x[2]-x[1]) mod 2!=0 or (x[1]-x[0]) mod 2!=0 or x.sum mod 3!=0: echo -1
  else: echo x.mapIt(abs(it-(x.sum div 3))).sum div 4