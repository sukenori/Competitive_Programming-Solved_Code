include atcoder/header
let
  H,W=nextInt()
  S=newSeqWith(H,nextString())
  A,B,C,D=nextInt()-1
import heapqueue
var
  q=[(0,A,B)].toHeapQueue
  c=newSeqWith(H,newSeqWith(W,int.inf))
  d=newSeqWith(H,newSeqWith(W,false))
c[A][B]=0
while q.len>0:
  let (ci,h,w)=q.pop
  if not d[h][w]:
    d[h][w]=true
    for (dh,dw) in [(-1,0),(0,1),(1,0),(0,-1)]:
      if h+dh in 0..<H and w+dw in 0..<W:
        if S[h+dh][w+dw]=='.' and c[h+dh][w+dw]>ci:
          c[h+dh][w+dw]=ci; q.push((ci,h+dh,w+dw))
        if S[h+dh][w+dw]=='#' and c[h+dh][w+dw]>ci+1:
          c[h+dh][w+dw]=ci+1; q.push((ci+1,h+dh,w+dw))
        if h+dh*2 in 0..<H and w+dw*2 in 0..<W:
          if S[h+dh*2][w+dw*2]=='#' and c[h+dh*2][w+dw*2]>ci+1:
            c[h+dh*2][w+dw*2]=ci+1; q.push((ci+1,h+dh*2,w+dw*2))
echo c[C][D]