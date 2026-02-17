include atcoder/header
let H,W,N=nextInt()
let T=nextString()
let S=newSeqWith(H,nextString())
var a=0
for i in 1..<H-1:
  for j in 1..<W-1:
    if S[i][j]=='#': continue
    var
      ni=i
      nj=j
    block b:
      for Ti in T:
        if Ti=='L': nj-=1
        if Ti=='R': nj+=1
        if Ti=='U': ni-=1
        if Ti=='D': ni+=1
        if S[ni][nj]=='#': break b
      a+=1
echo a