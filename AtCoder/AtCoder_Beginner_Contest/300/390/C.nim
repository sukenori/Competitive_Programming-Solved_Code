include atcoder/header
let
  H,W=nextInt()
  S=newSeqWith(H,nextString())
var
  Hh,Wh=0
  Hl,Wl=int.inf
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='#':
      Hh.max=i; Hl.min=i; Wh.max=j; Wl.min=j
for i in Hl..Hh:
  for j in Wl..Wh:
    if S[i][j]=='.': echo "No"; quit()
echo "Yes"