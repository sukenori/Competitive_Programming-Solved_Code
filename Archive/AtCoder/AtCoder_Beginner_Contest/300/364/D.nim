include atcoder/header
let
  N,Q=nextInt()
  a=newSeqWith(N,nextInt()).sorted
for _ in 1..Q:
  let b,k=nextInt()
  for i in 0..<N:
    if b<=a[i]:
      let j=a.lowerBound(b-(a[i]-b))
      if i-j+1==k or (i-j+1==k+1 and a[j]==b-(a[i]-b)): echo abs(a[i]-b); break
    else:
      let j=a.lowerBound(b+b-a[i])
      if j-i+1==k or (j-i+1==k+1 and a[j]==b+b-a[i]): echo abs(a[i]-b); break