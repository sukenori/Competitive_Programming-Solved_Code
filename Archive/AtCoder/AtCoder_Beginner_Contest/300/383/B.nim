include atcoder/header
let
  H,W,D=nextInt()
  S=newSeqWith(H,nextString())
proc c(i:int):tuple[h,w:int]=(i div W,i mod W)
proc d(i,j:int):int=abs(c(i).h-c(j).h)+abs(c(i).w-c(j).w)
var a=0
for i in 0..<H*W-1:
  for j in i+1..<H*W:
    if S[c(i).h][c(i).w]=='.' and S[c(j).h][c(j).w]=='.':
      var ai=0
      for k in 0..<H*W:
        if S[c(k).h][c(k).w]=='.' and (d(k,i)<=D or d(k,j)<=D):
          ai+=1
      a.max=ai
echo a