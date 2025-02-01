include atcoder/header
let N=nextInt()
var l:seq[(int,int)]
for i in 1..N:
  let A,B=nextInt()
  l.add((A,1)); l.add((A+B,-1))
l.sort
var a=newSeqWith(N+1,0)
var n=0
var li=1
for (i,d) in l:
  a[n]+=i-li
  li=i; n+=d
echo a[1..^1].join(" ")