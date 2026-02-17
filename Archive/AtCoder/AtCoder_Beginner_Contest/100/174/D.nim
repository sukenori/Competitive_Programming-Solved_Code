include atcoder/header
let
  N=nextInt()
  c=nextString()
var
  a,r=c.count('R')
  w=0
for i in 0..<N:
  if c[i]=='R': r-=1 else: w+=1
  a.min=max(w,r)
echo a