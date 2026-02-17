include atcoder/header
let S=("X"&nextString()).toSeq.mapIt(if it=='.': 1 else: 0).cumsummed
let K=nextInt()
var r,a=0
for l in 0..<S.len-1:
  while r<S.len-1 and S[r+1]-S[l]<=K: r+=1
  a.max=r-l
echo a