include atcoder/header
let N,M=nextInt()
var
  e:HashSet[(int,int)]
  a=0
for _ in 1..M:
  let u,v=nextInt()-1
  if u==v: a+=1
  elif (u,v) in e: a+=1
  else: e.incl((u,v)); e.incl((v,u))
echo a