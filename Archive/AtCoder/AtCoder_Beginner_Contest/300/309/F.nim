include atcoder/extra/header/chaemon_header
N:=nextInt()
b:=Seq[N,3:int]
for i in 0..<N: b[i]=Seq[3:nextInt()].sorted
import atcoder/extra/other/compress
c:=b.mapIt(it[1]).initCompress
import atcoder/segtree
s:=initSegTree[int](c.len,(a,b:int)=>min(a,b),()=>int.inf)
for bi in (b.sorted do(x,y:seq[int])->int: (result=cmp(x[0],y[0]); if result==0: result=cmp(-x[1],-y[1]))):
  if bi[2]<s.get(c.id(bi[1])): s.set(c.id(bi[1]),bi[2])
  if bi[2]>s.prod(0..<c.id(bi[1])): echo "Yes"; quit()
echo "No"