include atcoder/header
var c,r=newSeqWith(8,1)
for i in 0..<8:
  let S=nextString()
  if '#' in S: c[i]=0
  for j,Sj in S:
    if Sj=='#': r[j]=0
echo c.sum*r.sum