include atcoder/extra/header/chaemon_header
N:=nextInt()
var T=Seq[N:seq[int]]
for i in 0..<N:
  T[i]= @[Ti:=nextInt(),Ti+nextInt()]
T.sort(Descending)
t:=0; a:=0
import heapqueue
var h:HeapQueue[int]
while true:
  if h.len==0 and t<T[^1][0]: t=T[^1][0]
  while T.len>0 and T[^1][0]==t: h.push(T.pop[1])
  while h.len>0 and h[0]<t: h.del(0)
  if h.len>0 and t<=h[0]: h.del(0); a+=1; t+=1
  if T.len==0 and h.len==0: break
echo a