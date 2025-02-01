include atcoder/header
let N,Q=nextInt()
var
  L=0
  R=1
  a=0
  r,l:int
for _ in 1..Q:
  let
    H=nextString()
    T=nextInt()-1
  if H=="L":
    r=int.inf
    for i in 0..<N:
      if (L+i+N) mod N==R: break
      elif (L+i+N) mod N==T: r=i; break
    l=int.inf
    for i in 0..<N:
      if (L-i+N) mod N==R: break
      elif (L-i+N) mod N==T: l=i; break
    a+=min(r,l); L=T
  else:
    r=int.inf
    for i in 0..<N:
      if (R+i+N) mod N==L: break
      elif (R+i+N) mod N==T: r=i; break
    l=int.inf
    for i in 0..<N:
      if (R-i+N) mod N==L: break
      elif (R-i+N) mod N==T: l=i; break
    a+=min(r,l); R=T
echo a