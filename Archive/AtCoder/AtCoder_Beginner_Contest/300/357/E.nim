include atcoder/header
let
  N=nextInt()
  a=newSeqWith(N,nextInt()-1)
import deques
var
  d=newSeqWith(N,false)
  p:Deque[int]
  c=newSeq[int](N)
proc dfs(i:int)=
  d[i]=true; p.addLast(i)
  if not d[a[i]]: dfs(a[i])
  elif a[i] in p:
    var l=p; while l.peekFirst!=a[i]: l.popFirst
    for li in l: c[li]=l.len
  p.popLast
for i in 0..<N:
  if not d[i]: dfs(i)
proc r(i:int):int=
  if c[i]>0: c[i] else: r(a[i])+1
for i in 0..<N:
  if c[i]==0: c[i]=r(i)
echo c.sum