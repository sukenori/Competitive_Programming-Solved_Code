include atcoder/extra/header/chaemon_header
let
  M=nextInt()
  D=newSeqWith(M,nextInt())
var m=D.sum//2+1
for i in 0..<M:
  if m>D[i]: m-=D[i]
  else: echo i+1,' ',m; break