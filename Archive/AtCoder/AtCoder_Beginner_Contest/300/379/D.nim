include atcoder/header
import deques
var
  d:Deque[int]
  s=0
for _ in 1..nextInt():
  case nextInt():
    of 1: d.addLast(s)
    of 2: s+=nextInt()
    else:
      let H=nextInt()
      var a=0
      while d.len>0 and s-d.peekFirst>=H:
        d.popFirst; a+=1
      echo a