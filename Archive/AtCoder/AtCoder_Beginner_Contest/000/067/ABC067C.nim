include atcoder/extra/header/chaemon_header
N:=nextInt()
a:=Seq[N:nextInt()]
s:=a.sum
a=a.cumsummed
d:=int.inf
for i in 0..<N-1: d.min=abs(a[i]-(s-a[i]))
echo d