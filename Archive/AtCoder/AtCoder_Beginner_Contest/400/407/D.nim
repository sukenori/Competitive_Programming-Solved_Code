include atcoder/header
let
  H,W=nextInt()
  A=newSeqWith(H,newSeqWith(W,nextInt()))
var a=0
proc f(i:int;d:seq)=
  let (h,w)=(i div W,i mod W)
  if i==H*W:
    var aj=0
    for j in 0..<H*W:
      let (h,w)=(j div W,j mod W)
      if not d[h][w]: aj=aj xor A[h][w]
    a.max=aj
  elif d[h][w]: f(i+1,d)
  else:
    if h<H-1 and not d[h+1][w]:
      var nd=d
      nd[h][w]=true; nd[h+1][w]=true
      f(i+1,nd)
    if w<W-1 and not d[h][w+1]:
      var nd=d
      nd[h][w]=true; nd[h][w+1]=true
      f(i+1,nd)
    f(i+1,d)
f(0,newSeqWith(H,newSeq[bool](W)))
echo a