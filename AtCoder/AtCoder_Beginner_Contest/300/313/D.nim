include atcoder/extra/header/chaemon_header
let N,K=nextInt()
var
  A=Seq[N+1:0]
  a=Seq[K+2:0]
for i in 1..K+1:
  var q="?"
  for j in 1..K+1:
    if j!=i: q&=" " & $j
  echo q
  a[i]=nextInt()
for i in 1..K+1: A[i]=(a.sum-a[i])%2
for i in K+2..N:
  var q="? " & $i
  for j in 1..K-1: q&=" " & $j
  echo q
  A[i]=A[1..K-1].sum%2 xor nextInt()
echo "! "&A[1..N].join(" ")