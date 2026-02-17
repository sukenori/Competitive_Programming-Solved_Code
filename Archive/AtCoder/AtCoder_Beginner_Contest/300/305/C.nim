include atcoder/extra/header/chaemon_header
let H,W=nextInt()
S:=Seq[H:nextString()]
var h,w:seq[int]
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='#': h.add(i); w.add(j)
for i in h.min..h.max:
  for j in w.min..w.max:
    if S[i][j]=='.': echo i+1," ",j+1