include atcoder/header
let
  N=nextInt()
  S,T=nextString()&".."
import deques
var
  q=[S].toDeque
  t=[(S,0)].toTable
while q.len>0:
  let
    Si=q.popFirst
    k=Si.find('.')
  for j in 0..N:
    if '.' notin Si[j..j+1]:
      var Sj=Si
      swap(Sj[j],Sj[k]); swap(Sj[j+1],Sj[k+1])
      if not t.hasKey(Sj) or t[Sj]>t[Si]+1:
        t[Sj]=t[Si]+1; q.addLast(Sj)
echo if t.hasKey(T): t[T] else: -1