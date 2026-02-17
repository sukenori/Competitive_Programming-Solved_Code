include atcoder/header
let
  H,W,D=nextInt()
  S=newSeqWith(H,nextString())
import deques
var
  q:Deque[(int,int)]
  d=newSeqWith(H,newSeq[int](W))
  a=0
for i in 0..<H:
  for j in 0..<W:
    if S[i][j]=='H':
      a+=1; d[i][j]=D+1; q.addLast((i,j))
      while q.len>0:
        let (h,w)=q.popFirst
        for (dh,dw) in [(-1,0),(0,1),(1,0),(0,-1)]:
          let (nh,nw)=(h+dh,w+dw)
          if nh in 0..<H and nw in 0..<W and S[nh][nw]=='.' and d[nh][nw]<d[h][w]-1:
            if d[nh][nw]==0: a+=1
            d[nh][nw]=d[h][w]-1; q.addLast((nh,nw))
echo a