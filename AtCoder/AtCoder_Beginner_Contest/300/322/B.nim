include atcoder/header
let
  N,M=nextInt()
  S,T=nextString()
  s=T.startsWith(S)
  e=T.endsWith(S)
echo (not s).int*2+(not e).int