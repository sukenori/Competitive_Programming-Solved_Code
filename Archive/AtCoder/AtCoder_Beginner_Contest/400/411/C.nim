include atcoder/header
let N,Q=nextInt()
var
  s=false.repeat(N+2)
  a=0
for _ in 1..Q:
  let A=nextInt()
  if s[A-1]==s[A+1]:
    if s[A-1]==s[A]: a+=1 else: a-=1
  echo a
  s[A]=not s[A]