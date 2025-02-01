include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
S:=nextString()
import atcoder/extra/string/rolling_hash
import atcoder/segtree
var s,rs=initSegTree[RH](N,(a,b:RH)=>a&b.h,()=>'0'.toRH)
for i,Si in S: s[i]=Si.toRH
for i,Si in S.reversed: rs[i]=Si.toRH
for _ in 1..Q:
  if nextInt()==1:
    x:=nextInt()-1
    c:=nextString()[0].toRH
    s.set(x,c); rs.set(N-1-x,c)
  else:
    let L,R=nextInt()-1
    echo if s.prod(L..R)==rs.prod(N-1-R..N-1-L): "Yes" else: "No"