include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
B:=Seq[N:[nextInt()].toHashSet]
for _ in 0..<Q:
  let a,b=nextInt()-1
  if B[b].len<B[a].len: swap(B[a],B[b])
  for ai in B[a]: B[b].incl(ai)
  B[a].clear
  echo B[b].len