include atcoder/header
let N,Q=nextInt()
let S=nextString()
var s:seq[int]
for i in 0..<N-1: s.add(if S[i]!=S[i+1]: 1 else: 0)
import atcoder/segtree
type T=int
proc op(a,b:T):T=a+b
proc e():T=0
var t=initSegTree[T](s,op,e)
for _ in 1..Q:
  let q=nextInt()
  let L,R=nextInt()-1
  if q==1:
    if L>0: t[L-1]=1-t[L-1]
    if R<N-1: t[R]=1-t[R]
  if q==2:
    echo if t[L..<R]==R-L or L==R: "Yes" else: "No"