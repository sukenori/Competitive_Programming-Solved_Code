include atcoder/extra/header/chaemon_header
let N,K=nextInt()
m:=Seq[N:tuple[a,b:int]]; s:=0
for i in 0..<N:
  let a,b=nextInt()
  m[i]=(a,b); s+=b
m.add((0,0)); m.sort
for mi in m:
  s-=mi.b
  if s<=K: echo mi.a+1; break