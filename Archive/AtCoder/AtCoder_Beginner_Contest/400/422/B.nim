include atcoder/header
let
  H,W=nextInt()
  S=newSeqWith(H,nextString())
var f=true
for h in 0..<H:
  for w in 0..<W:
    if S[h][w]=='#':
      var c=0
      for (dh,dw) in [(-1,0),(0,1),(1,0),(0,-1)]:
        let (nh,nw)=(h+dh,w+dw)
        if nh in 0..<H and nw in 0..<W and S[nh][nw]=='#': c+=1
      if not (c==2 or c==4): f=false
echo if f: "Yes" else: "No"