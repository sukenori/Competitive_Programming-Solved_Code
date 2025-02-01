include atcoder/extra/header/chaemon_header
let N,M=nextInt()
d:=Seq[N+1:false]; d[1]=true
l:=[1].toDeque
while true:
  k:=nextInt()
  v:=Seq[k:nextInt()]
  block b:
    for vi in v:
      if not d[vi]:
        echo vi
        if vi==N: quit()
        d[vi]=true
        l.addLast(vi)
        break b
    discard l.popLast
    echo l.peekLast