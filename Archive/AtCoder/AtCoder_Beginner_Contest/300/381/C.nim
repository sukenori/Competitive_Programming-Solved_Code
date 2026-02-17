include atcoder/header
let
  N=nextInt()
  S=nextString()
proc f(i:var int,c:char):int=
  while i<N and S[i]==c: result+=1; i+=1
var a=0
var i=0; while i<N:
  let
    c1=f(i,'1')
    cs=f(i,'/')
    c2=f(i,'2')
  a.max=(if cs>0: min(c1,c2)*2+1 else:0)
echo a