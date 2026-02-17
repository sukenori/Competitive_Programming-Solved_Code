include atcoder/header
let n=nextInt()
let p=newSeqWith(n,nextInt())
let f=p.find(1)+1
let l=p.find(n)+1
if abs(l-f)>1:
  if f<l: echo 0
  else: echo 1
else:
  if l<f: echo min(f-1,n-l+2)
  else: echo min(n-f+1,l-1+1)