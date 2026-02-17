include atcoder/extra/header/chaemon_header
let N,K=nextInt()
A:=Seq[K:nextInt()]
if K%2==0:
  d:=(block: collect(newSeq):(for i in 1..<K>>2: A[i]-A[i-1]))
  echo d.sum
else:
  ld:=(block: collect(newSeq):(for i in 1..<K-1>>2: A[i]-A[i-1]))
  rd:=(block: collect(newSeq):(for i in 2..<K>>2: A[i]-A[i-1]))
  ai:=rd.sum
  a:=ai
  for i in 0..<K//2:
    ai+=ld[i]-rd[i]
    a.min=ai
  echo a