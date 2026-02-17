include atcoder/header
let
  N=nextInt()
  S=nextString()
var a=0
for i in 0..<N-2:
  if S[i]=='#' and S[i+2]=='#' and S[i+1]=='.': a+=1
echo a