include atcoder/header
let N,K=nextInt()
var A:seq[(int,int)]
for i in 1..N: A.add((nextInt(),-i))
A.sort
var j,a=int.inf
for (Ai,i) in A:
  if i in -K.. -1: j.min=i
  else: a.min=j-i
echo if a<N: a else: -1