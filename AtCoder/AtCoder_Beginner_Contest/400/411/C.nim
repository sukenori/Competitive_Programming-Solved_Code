include atcoder/header
let N,Q=nextInt()
var
  s=false.repeat(N)
  a=0
for _ in 1..Q:
  let A=nextInt()-1
  if A==0:
    if s[0] and not s[1]: a-=1
    if not s[0] and not s[1]: a+=1
  elif A==N-1:
    if not s[^2] and s[^1]: a-=1
    if not s[^2] and not s[^1]: a+=1
  elif s[A-1]==s[A+1]:
    if s[A-1]:
      if s[A]: a+=1
      else: a-=1
    else:
      if s[A]: a-=1
      else: a+=1
  s[A]=not s[A]
  echo a