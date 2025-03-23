include atcoder/header
let N=nextInt()
var A=newSeqWith(N,newSeq[char](N))
for i in 1..N:
  let j=N+1-i
  if i<=j:
    for k in i..j:
      for l in i..j:
        A[k-1][l-1]=if i mod 2==1: '#' else: '.'
for i in 0..<N: echo A[i].join