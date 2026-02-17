include atcoder/extra/header/chaemon_header
let N,D=nextInt()
S:=Seq[N:nextString()]
a:=0; ai:=0
for i in 0..<D:
  if S.mapIt(it[i]).allIt(it=='o'): ai+=1; a.max=ai
  else: ai=0
echo a