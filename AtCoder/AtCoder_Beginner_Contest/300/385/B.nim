include atcoder/header
let H,W=nextInt()
var X,Y=nextInt()-1
let
  S=newSeqWith(H,nextString())
  T=nextString()
var C:HashSet[(int,int)]
for Ti in T:
  if Ti=='U' and S[X-1][Y]!='#': X-=1
  elif Ti=='D' and S[X+1][Y]!='#': X+=1
  elif Ti=='L' and S[X][Y-1]!='#': Y-=1
  elif Ti=='R' and S[X][Y+1]!='#': Y+=1
  if S[X][Y]=='@': C.incl((X,Y))
echo X+1," ",Y+1," ",C.len