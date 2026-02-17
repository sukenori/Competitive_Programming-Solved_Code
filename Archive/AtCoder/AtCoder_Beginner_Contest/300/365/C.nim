include atcoder/header
let
  N,M=nextInt()
  A=newSeqWith(N,nextInt()).sorted
  s= @[0]&A.cumsummed
if M>=A.sum: echo "infinite"; quit()
var
  l=0
  r=10^9
while r-l>1:
  let
    m=(l+r) div 2
    i=A.lowerBound(m)
    k=s[i]+(N-i)*m
  if k<=M: l=m
  else: r=m
echo l