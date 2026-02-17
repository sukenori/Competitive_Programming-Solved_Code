include atcoder/extra/header/chaemon_header
var
  N=nextInt()
  S=(block: collect(newSeq):
    for i in nextString(): (i:0,c:($i)))
  Q=nextInt()
  li,lt=0
for i in 0..<Q:
  let
    t,x=nextInt()
    c=nextString()
  if t==1: S[x-1]=(i,c)
  else: li=i; lt=t
echo S.mapIt(if it.i>li or lt==0: it.c
  elif lt==2: (it.c).toLowerAscii
  else: (it.c).toUpperAscii).join