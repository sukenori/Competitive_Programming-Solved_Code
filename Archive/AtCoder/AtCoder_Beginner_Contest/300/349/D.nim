include atcoder/header
let L,R=nextInt()
var a:seq[(int,int)]
var l=L; while l<R:
  for i in countdown(60,0):
    if l mod 2^i==0:
      let r=l+2^i
      if r<=R: a.add((l,r)); l=r; break
echo a.len
for (l,r) in a.sorted: echo l," ",r