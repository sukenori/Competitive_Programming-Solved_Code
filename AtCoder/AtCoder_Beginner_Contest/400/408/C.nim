include atcoder/header
let N,M=nextInt()
var c=newSeq[int](N+1)
for _ in 1..M:
  let L,R=nextInt()-1
  c[L]+=1; c[R+1]-=1
echo c.cumsummed[0..<N].min