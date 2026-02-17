include atcoder/header
var
  N,Q=nextInt()
  A=newSeqWith(N,nextInt())
import atcoder/fenwicktree
var c,s=initFenwickTree[int](5*10^5+1)
for i in 0..<N:
  c.add(A[i],1); s.add(A[i],A[i])
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let x,y=nextInt()
    c.add(A[x-1],-1); s.add(A[x-1],-A[x-1])
    A[x-1]=y
    c.add(y,1); s.add(y,y)
  else:
    let l,r=nextInt()
    if l<=r: echo c[0..<l]*l+s[l..<r]+c[r..5*10^5]*r
    else: echo N*l