include atcoder/header
let N,X=nextInt()
var S,C,P=newSeq[int](N)
for i in 0..<N:
  let Si,Ci,Pi=nextInt()
  S[i]=Si; C[i]=Ci; P[i]=Pi
var dp=newSeqWith(1 shl N,newSeq[float](X+1))
for x in 0..X:
  for i in 0..<1 shl N:
    for j in 0..<N:
      if (i shr j and 1)==0 and x>=C[j]:
        dp[i][x].max=(dp[i+1 shl j][x-C[j]]+S[j].float)*P[j].float/100.0+dp[i][x-C[j]]*(100-P[j]).float/100.0
echo dp[0][X]