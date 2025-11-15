include atcoder/header
import deques
let T=nextInt()
for _ in 1..T:
  let
    H,W=nextInt()
    S=newSeqWith(H,nextString())
  var
    q=[(0,0,0,1,0)].toDeque
    d=[((0,0,0,1),0)].toTable
  while q.len>0:
    let (h,w,dh,dw,c)=q.popFirst
    for (m,ndh,ndw) in [('A',dh,dw),('B',dw,dh),('C',-dw,-dh)]:
      if h+ndh in 0..<H and w+ndw in 0..<W or (h+ndh,w+ndw)==(H-1,W):
        if S[h][w]==m and (not d.hasKey((h+ndh,w+ndw,ndh,ndw)) or d[(h+ndh,w+ndw,ndh,ndw)]>c):
          d[(h+ndh,w+ndw,ndh,ndw)]=c
          if (h+ndh,w+ndw)!=(H-1,W): q.addFirst((h+ndh,w+ndw,ndh,ndw,c)) 
        elif (not d.hasKey((h+ndh,w+ndw,ndh,ndw)) or d[(h+ndh,w+ndw,ndh,ndw)]>c+1):
          d[(h+ndh,w+ndw,ndh,ndw)]=c+1
          if (h+ndh,w+ndw)!=(H-1,W): q.addLast((h+ndh,w+ndw,ndh,ndw,c+1))
  echo d[(H-1,W,0,1)]