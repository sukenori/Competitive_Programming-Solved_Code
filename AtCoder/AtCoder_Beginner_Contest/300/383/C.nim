include atcoder/header
let
  H,W,D=nextInt()
  S=newSeqWith(H,nextString())
var
  d=newSeq[int](H*W)
  a:HashSet[int]
proc c(i:int):tuple[h,w:int]=(i div W,i mod W)
import deques
for i in 0..<H*W:
  if S[c(i).h][c(i).w]=='H':
    if i notin a:
      a.incl(i)
      var q=[i].toDeque
      while q.len>0:
        let j=q.popFirst
        for (dh,dw) in [(-1,0),(0,1),(1,0),(0,-1)]:
          let
            (nh,nw)=(c(j).h+dh,c(j).w+dw)
            nj=nh*W+nw
          if nh in 0..<H and nw in 0..<W:
            if S[nh][nw]=='H' and nj notin a:
              d[nj]=0; q.addLast(nj); a.incl(nj)
            if S[nh][nw]=='.' and ((d[j]<D and d[nj]==0) or d[nj]>d[j]+1):
              d[nj]=d[j]+1; q.addLast(nj); a.incl(nj)
echo a.len