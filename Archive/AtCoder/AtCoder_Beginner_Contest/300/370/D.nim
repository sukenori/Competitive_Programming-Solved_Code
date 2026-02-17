include atcoder/header
let H,W,Q=nextInt()
var
  h=newSeqWith(H,newSeq[(int,int)]())
  w=newSeqWith(W,newSeq[(int,int)]())
  a=H*W
for _ in 1..Q:
  let R,C=nextInt()-1
  var
    c,r:int
    f=false
  for i in 0..<h[R].len:
    if C in h[R][i][0]..h[R][i][1]: c=i; f=true
  for i in 0..<w[C].len:
    if R in w[C][i][0]..w[C][i][1]: 

  block r:

        if 0<h[R][i][0]: h[R][i][0]-=1; a-=1
        if h[R][i][1]<W-1: h[R][i][1]+=1; a-=1
        break r
    h[R].add((C,C)); a-=1
  block c:

        if 0<w[C][i][0]: w[C][i][0]-=1; a-=1
        if w[C][i][1]<H-1: w[C][i][1]+=1; a-=1
        break c
    w[C].add((R,R))
echo h
echo w
echo a