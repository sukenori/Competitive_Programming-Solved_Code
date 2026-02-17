include atcoder/header
let
  N,S=nextInt()
  A=newSeqWith(N,nextInt())
  c=(A&A).cumsummed
  s=c.toHashSet
for i in 0..<2*N:
  if c[i]+S mod c[N-1] in s:
    echo "Yes"; quit()  
echo "No"