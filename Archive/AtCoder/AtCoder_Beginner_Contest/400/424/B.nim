include atcoder/header
let N,M,K=nextInt()
var
  c=newSeq[int](N)
  a:seq[int]
for _ in 1..K:
  let A,B=nextInt()-1
  c[A]+=1
  if c[A]==M: a.add(A+1)
echo a.join(" ")