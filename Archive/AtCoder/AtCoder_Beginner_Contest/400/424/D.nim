include atcoder/header
import bitops
let T=nextInt()
for _ in 1..T:
  let
    H,W=nextInt()
    S=newSeqWith(H,fromBin[int]("0b"&nextString().replace(".","0").replace("#","1")))
  var dp=newSeqWith(H,newSeqWith(1 shl W,H*W))
  dp[0][S[0]]=0
  for i in 1..<H:
    for j in 0..<1 shl W:
      for k in 0..<1 shl W:
        if (not S[i] and k)==0 and (0..<W-1).toSeq.allIt(j.bitsliced(it..it+1)!=3 or k.bitsliced(it..it+1)!=3):
          dp[i][k].min=dp[i-1][j]+(S[i] and not k).countSetBits
  echo dp[^1].min