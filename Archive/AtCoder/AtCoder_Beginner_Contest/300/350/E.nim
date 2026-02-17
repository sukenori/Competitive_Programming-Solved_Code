include atcoder/header
let N,A=nextInt()
let X,Y=nextFloat()
var t:Table[int,float]
proc dp(i:int):float=
  if t.hasKey(i): result=t[i]
  else:
    if i==0: result=0
    else: result=min(dp(floorDiv(i,A))+X,(2..6).toSeq.mapIt((dp(floorDiv(i,it))+Y*(6/5))*(1/5)).sum)
    t[i]=result
echo dp(N)