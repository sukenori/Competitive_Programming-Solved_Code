include atcoder/header
let N,M=nextInt()
import atcoder/dsu
var
  d=initDSU(N)
  c:seq[(int,int)]
for i in 1..M:
  let A,B=nextInt()-1
  if d.same(A,B): c.add((i,A))
  else: d.merge(A,B)
let g=d.groups.len
echo g-1
var j=1
for i in 0..<g-1:
  var nB:int
  if not d.same(0,c[i][1]): nB=0
  else:
    while d.same(c[i][1],j): j+=1
    nB=j
  echo c[i][0]," ",c[i][1]+1," ",nB+1
  d.merge(c[i][1],nB)