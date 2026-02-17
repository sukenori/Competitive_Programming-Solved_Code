include atcoder/header
let
  H,W=nextInt()
  S=newSeqWith(H,nextString())
var
  s=newSeqWith(H,newSeq[int](W))
  th,tw:int
for h in 0..<H:
  for w in 0..<W:
    if S[h][w]=='T': th=h; tw=w
    elif S[h][w]=='#': s[h][w]=1
import atcoder/extra/dp/cumulative_sum_2d
let c=s.initCumulativeSum2D
import deques
var
  q=[(0,H-1,0,W-1,0,0)].toDeque
  d=[((0,H-1,0,W-1,0,0),0)].toTable
while q.len>0:
  let
    (lh,rh,lw,rw,h,w)=q.popFirst
    i=(lh,rh,lw,rw,h,w)
  if c[lh..rh,lw..rw]==0: echo d[i]; quit()
  for (dh,dw) in [(-1,0),(1,0),(0,-1),(0,1)]:
    let
      (nh,nw)=(h+dh,w+dw)
      (nlh,nrh,nlw,nrw)=(max(lh,-nh),min(rh,H-1-nh),max(lw,-nw),min(rw,W-1-nw))
      ni=(nlh,nrh,nlw,nrw,nh,nw)
      (nth,ntw)=(th-nh,tw-nw)
    if not d.hasKey(ni) and not (nth in nlh..nrh and ntw in nlw..nrw and S[nth][ntw]=='#'):
      d[ni]=d[i]+1; q.addLast(ni)
echo -1