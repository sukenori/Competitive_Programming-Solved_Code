include atcoder/header
let N=nextInt()
var dp1,dp0=1
for _ in 1..N:
  if nextString()=="OR":
    dp1+=dp1+dp0
  else:
    dp0+=dp1+dp0
echo dp1