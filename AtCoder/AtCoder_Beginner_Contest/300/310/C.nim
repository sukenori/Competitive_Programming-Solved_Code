include atcoder/extra/header/chaemon_header
N:=nextInt()
var s:HashSet[string]
for _ in 1..N:
  S:=nextString()
  s.incl(min(S,S.reversed.join))
echo s.len