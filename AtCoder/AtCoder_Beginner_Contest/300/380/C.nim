include atcoder/header
let
  N,K=nextInt()
  S=nextString()&'2'
var
  l= @[(k:S[0],v:0)]
  c=(S[0]=='1').int
for Si in S:
  if l[^1].k==Si: l[^1].v+=1
  else:
    if Si!='1' and c==K: l=l[0..^3]&l[^1]&l[^2]
    l.add((Si,1))
    if Si=='1': c+=1
var a:string
for (k,v) in l[0..^2]: a&=k.repeat(v)
echo a