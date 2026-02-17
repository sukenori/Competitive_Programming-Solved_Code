include atcoder/extra/header/chaemon_header
N:=nextInt()
var t:Table[int,int]
for i in 1..N: A:=nextInt(); t[A]=i
a := @[t[-1]]
for i in 1..<N: a.add(t[a[^1]])
echo a.join(" ")