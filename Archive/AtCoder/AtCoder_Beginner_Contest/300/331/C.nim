include atcoder/extra/header/chaemon_header
N:=nextInt()
A:=Seq[N:nextInt()]
dA:= @[0]&A.sorted(Descending)
for i in 1..N: dA[i]+=dA[i-1]
sA:=A.sorted
var a:seq[int]
for Ai in A: a.add(dA[N-sA.upperBound(Ai)])
echo a.join(" ")