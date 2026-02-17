include atcoder/header
let N,M=nextInt()
var
  S=newSeqWith(N,nextString())
  T=newSeqWith(M,nextString())
for a in 0..N-M:
  for b in 0..N-M:
    var f=true
    for i in 0..<M:
      for j in 0..<M:
        if S[a+i][b+j]!=T[i][j]: f=false
    if f: echo a+1," ",b+1; quit()