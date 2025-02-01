include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
R:=Seq[N:nextInt()].sorted
for i in 1..<N: R[i]+=R[i-1]
for _ in 1..Q: echo R.upperBound(nextInt())