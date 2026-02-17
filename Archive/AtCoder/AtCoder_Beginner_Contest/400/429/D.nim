include atcoder/header
let
  N,M,C=nextInt()
  A=newSeqWith(N,nextInt())
  n=A.toHashSet.len
  p=(A&A.mapIt(it+M)).toCountTable.pairs.toSeq.sortedByIt(it[0])
var
  r=1
  X=p[1][1]
  a=0
for l in 1..n:
  while X<C: r+=1; X+=p[r][1]
  a+=X*(p[l][0]-p[l-1][0])
  X-=p[l][1]
echo a