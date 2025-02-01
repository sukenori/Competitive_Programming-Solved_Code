include atcoder/header
var
  N=nextInt()
  c1,c2=nextString()[0]
  S=nextString()
for i in 0..<N:
  if S[i]!=c1: S[i]=c2
echo S