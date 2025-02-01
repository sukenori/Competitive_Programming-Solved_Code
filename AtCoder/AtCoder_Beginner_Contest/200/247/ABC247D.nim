include atcoder/header
import deques
var d:Deque[(int,int)]
for _ in 1..nextInt():
  let q=nextInt()
  if q==1:
    let x,c=nextInt()
    d.addLast((x,c))
  else:
    var
      c=nextInt()
      a=0
    while c>0:
      let
        (xi,ci)=d.popFirst
        di=min(ci,c)
      if ci>c: d.addFirst((xi,ci-di))
      a+=xi*di; c-=di
    echo a