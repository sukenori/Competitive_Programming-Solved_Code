include atcoder/header
let H,W=nextInt()
var
  S=newSeq[string](H)
  Si,Sj,Gi,Gj:int
for i in 0..<H:
  S[i]=nextString()
  if S[i].find("S")>=0: Si=i; Sj=S[i].find("S")
  if S[i].find("G")>=0: Gi=i; Gj=S[i].find("G")
import deques
var a=int.inf
proc f(f:bool)=
  var
    q=[(Si,Sj)].toDeque
    d=newSeqWith(H,newSeqWith(W,int.inf))
    fi=f
  d[Si][Sj]=0
  while q.len>0:
    let (i,j)=q.popFirst
    if fi:
      for (dh,dw) in [(-1,0),(1,0)]:
        let (nh,nw)=(i+dh,j+dw)
        if (nh,nw)==(Gi,Gj): a.min=d[i][j]+1
        if nh in 0..<H and nw in 0..<W and S[nh][nw]=='.' and d[nh][nw]>d[i][j]+1:
          d[nh][nw]=d[i][j]+1; q.addLast((nh,nw))
      fi=false
    else:
      for (dh,dw) in [(0,1),(0,-1)]:
        let (nh,nw)=(i+dh,j+dw)
        if (nh,nw)==(Gi,Gj): a.min=d[i][j]+1
        if nh in 0..<H and nw in 0..<W and S[nh][nw]=='.' and d[nh][nw]>d[i][j]+1:
          d[nh][nw]=d[i][j]+1; q.addLast((nh,nw))
      fi=true
  echo d
f(true); f(false)
echo if a!=int.inf: a else: -1