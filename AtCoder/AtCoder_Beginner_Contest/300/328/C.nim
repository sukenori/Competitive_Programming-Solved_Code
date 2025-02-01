include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
S:=nextString()
c:=Seq[N:int]
for i in 1..<N:
  c[i]=c[i-1]+(S[i]==S[i-1]).int
for _ in 1..Q:
  let l,r=nextInt()-1; echo c[r]-c[l]