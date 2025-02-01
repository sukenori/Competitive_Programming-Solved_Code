include atcoder/header
let
  N,M=nextInt()
  S=newSeqWith(N,nextString().parseBinInt)
import bitops
var a=0
for i in 0..<N-1:
  for j in i+1..<N:
    if (S[i] xor S[j]).countSetBits mod 2!=0: a+=1
echo a