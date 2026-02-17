include atcoder/extra/header/chaemon_header
N:=nextInt()
T:=Seq[N:nextInt()]
a:=T[0]
for i in 1..<N: a=lcm(a,T[i])
echo a