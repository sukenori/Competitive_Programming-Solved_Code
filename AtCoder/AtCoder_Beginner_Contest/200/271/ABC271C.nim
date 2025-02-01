include atcoder/header
let N=nextInt()
var a=newSeqWith(N,nextInt()).toHashSet.toSeq.sorted
a=a&int.inf.repeat(N-a.len)
var
  i=0
  j=N-1
  r=0
while i<=j:
  if a[i]==r+1: r+=1; i+=1
  elif i<=j-1: r+=1; j-=2
  else: break
echo r