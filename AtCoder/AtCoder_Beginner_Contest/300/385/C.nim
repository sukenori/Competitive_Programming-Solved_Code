include atcoder/header
let
  N=nextInt()
  H=newSeqWith(N,nextInt())
var a=1
for d in 1..<N:
  for i in 0..<N-d:
    var
      h=H[i]
      j=i+d
      ai,aj=1
    while j<N:
      if H[j]==h: aj+=1 else: h=H[j]; aj=1
      j+=d; ai.max=aj
    a.max=ai
echo a