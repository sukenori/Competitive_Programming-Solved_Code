include atcoder/header
let
  S=nextString()
  n=(1..S.len).toSeq.filterIt(S[it-1]=='#')
for i in 0..<n.len div 2: echo n[i*2],',',n[i*2+1]