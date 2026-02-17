include atcoder/header
let N=nextInt()
var A=newSeqWith(N,nextInt())
for i in 1..N:
  if i notin A:
    let j=A.find(-1)
    if j<0: echo "No"; quit()
    else: A[j]=i
echo "Yes"; echo A.join(" ")