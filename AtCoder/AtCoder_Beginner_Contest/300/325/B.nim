include atcoder/extra/header/chaemon_header
N:=nextInt()
var W,X=Seq[N:int]
for i in 0..<N:
  W[i]=nextInt(); X[i]=nextInt()
a:=0
for i in 0..<24:
  ai:=0
  for j in 0..<N:
    if (i+X[j])%24 in 9..<18: ai+=W[j]
  a.max=ai
echo a