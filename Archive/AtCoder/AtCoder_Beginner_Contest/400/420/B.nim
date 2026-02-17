include atcoder/header
let
  N,M=nextInt()
  S=newSeqWith(N,nextString())
var p=newSeq[int](N)
for i in 0..<M:
  var x,y=0
  for j in 0..<N:
    if S[j][i]=='0': x+=1
    else: y+=1
  if x==0 or y==0:
    for j in 0..<N: p[j]+=1
  elif x<y:
    for j in 0..<N:
      if S[j][i]=='0': p[j]+=1
  else:
    for j in 0..<N:
      if S[j][i]=='1': p[j]+=1
echo (0..<N).toSeq.filterIt(p[it]==p.max).mapIt(it+1).join(" ")