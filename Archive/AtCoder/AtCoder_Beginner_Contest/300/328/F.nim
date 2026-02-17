include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
p:=(0..<N).toSeq; w:=Seq[N:0]
proc r(i:int):int=
  if p[i]==i: return i
  else: rp:=r(p[i]); w[i]+=w[p[i]]; p[i]=rp; return rp
proc u(a,b,d:int):bool=
  ra:=r(a); rb:=r(b)
  if ra==rb: return w[a]-w[b]==d
  else: p[ra]=rb; w[ra]=w[b]+d-w[a]; return true
S:= @int
for i in 1..Q:
  let a,b=nextInt()-1; d:=nextInt()
  if u(a,b,d): S.add(i)
print(S)