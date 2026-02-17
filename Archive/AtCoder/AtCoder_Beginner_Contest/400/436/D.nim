include atcoder/header
var
  H,W=nextInt()
  S=newSeqWith(H,nextString())
  t=newSeq[HashSet[(int,int)]]('z'.ord-'a'.ord)
  d=newSeqWith(H,newSeqWith(W,int.inf))
for h in 0..<H:
  for w in 0..<W:
    if S[h][w].isLowerAscii: t[S[h][w].ord-'a'.ord].incl((h,w))
import deques
var q=[(0,0)].toDeque
d[0][0]=0
while q.len>0:
  let (h,w)=q.popFirst
  for (dh,dw) in [(-1,0),(0,1),(1,0),(0,-1)]:
    let (nh,nw)=(h+dh,w+dw)
    if nh in 0..<H and nw in 0..<W and S[nh][nw]!='#' and d[h][w]+1<d[nh][nw]:
      d[nh][nw]=d[h][w]+1; q.addLast((nh,nw))
  if S[h][w].isLowerAscii:
    for (nh,nw) in t[S[h][w].ord-'a'.ord]:
      if d[h][w]+1<d[nh][nw]:
        d[nh][nw]=d[h][w]+1; q.addLast((nh,nw))
      S[nh][nw]='.'
    S[h][w]='.'
echo if d[^1][^1]<int.inf: d[^1][^1] else: -1