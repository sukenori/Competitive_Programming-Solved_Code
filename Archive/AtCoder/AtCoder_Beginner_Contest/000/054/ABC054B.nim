include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextString())
  B=newSeqWith(M,nextString())
for i in 0..N-M:
  for j in 0..N-M:
    if (i..<i+M).toSeq.mapIt(A[it][j..<j+M])==B: echo "Yes"; quit()
echo "No"