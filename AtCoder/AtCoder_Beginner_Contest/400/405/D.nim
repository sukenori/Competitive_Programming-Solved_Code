include atcoder/header
let
  H,W=nextInt()
  S=newSeqWith(H,nextString())
import deques
var
  q:Deque[(int,int)]
  d=newSeqWith(H,newSeqWith(W,int.inf))
  T=S
for h in 0..<H:
  for w in 0..<W:
    if S[h][w]=='E':
      q.addLast((h,w)); d[h][w]=0
while q.len>0:
  let (h,w)=q.popFirst
  for f,(dh,dw) in [(-1,0),(0,1),(1,0),(0,-1)]:
    let (nh,nw)=(h+dh,w+dw)
    if nh in 0..<H and nw in 0..<W and S[nh][nw]=='.' and d[nh][nw]>d[h][w]+1:
      d[nh][nw]=d[h][w]+1
      T[nh][nw]="v<^>"[f] 
      q.addLast((nh,nw))
echo T.join("\n")