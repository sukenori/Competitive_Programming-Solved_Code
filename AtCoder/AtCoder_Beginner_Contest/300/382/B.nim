include atcoder/header
var
  N,D=nextInt()
  S=nextString().toSeq
for i in 1..N:
    if S[^i]=='@' and D>0: S[^i]='.'; D-=1
echo S.join