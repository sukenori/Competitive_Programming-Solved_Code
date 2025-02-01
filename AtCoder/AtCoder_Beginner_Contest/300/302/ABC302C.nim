include atcoder/header
let N,M=nextInt()
var S=newSeqWith(N,nextString()).sorted
while true:
  block b:
    for i in 1..<N:
      if (0..<M).toSeq.mapIt((S[i-1][it]!=S[i][it]).int).sum!=1:
        break b
    echo "Yes"; quit()
  if not S.nextPermutation(): break
echo "No"