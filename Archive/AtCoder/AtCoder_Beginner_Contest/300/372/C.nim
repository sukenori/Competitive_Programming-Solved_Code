include atcoder/header
let N,Q=nextInt()
var S=nextString().toSeq
proc f(s,e:int):int=
  for i in s..e:
    if 0<=i and i+2<=N-1:
      if S[i..i+2]=="ABC".toSeq: result+=1
var a=f(0,N-3)
for _ in 1..Q:
  let
    X=nextInt()-1
    C=nextString()[0]
  a-=f(X-2,X)
  S[X]=C
  a+=f(X-2,X)
  echo a