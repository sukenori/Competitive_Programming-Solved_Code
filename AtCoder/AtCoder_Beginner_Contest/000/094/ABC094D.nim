include atcoder/header
let n=nextInt()
let a=newSeqWith(n,nextInt()).sorted(Descending)
let m=a[0]
var c=a[1]
for ai in a:
  if abs(ai-m div 2)<abs(c-m div 2): c=ai
echo m," ",c