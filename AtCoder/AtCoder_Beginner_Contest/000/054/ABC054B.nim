include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextString())
  B=newSeqWith(M,nextString())
for i in 0..N-M:
  for j in 0..N-M:
    var Bi:seq[string]
    for k in i..<i+M:
      Bi.add(A[k][j..<j+M])
    if Bi==B: echo "Yes"; quit()
echo "No"