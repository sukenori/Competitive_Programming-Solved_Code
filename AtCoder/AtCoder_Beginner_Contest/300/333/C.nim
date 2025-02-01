include atcoder/extra/header/chaemon_header
N:=nextInt()
var s:HashSet[int]
for i in 1..12:
  for j in 1..12:
    for k in 1..12:
      proc r(d:int):int=
        result="1".repeat(d).parseInt
      s.incl(r(i)+r(j)+r(k))
echo s.toSeq.sorted[N-1]