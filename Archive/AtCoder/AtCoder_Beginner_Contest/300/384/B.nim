include atcoder/header
var N,R=nextInt()
for _ in 1..R:
  let D,A=nextInt()
  if (D==1 and R in 1600..2799) or (D==2 and R in 1200..2399):
    R+=A
echo R