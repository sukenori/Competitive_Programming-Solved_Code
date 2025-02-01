include atcoder/header
let N=nextInt()
var A= @[0]&newSeqWith(N,nextInt())
var a:seq[(int,int)]
for i in 1..N:
  while A[i]!=i:
    let j=A[i]
    a.add((i,j))
    swap(A[i],A[j])
echo a.len
for (i,j) in a: echo i," ",j