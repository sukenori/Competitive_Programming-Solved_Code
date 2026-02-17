include atcoder/extra/header/chaemon_header
let N,L,R=nextInt()
A:=Seq[N:nextInt()]
echo A.mapIt(it.clamp(L,R)).join(" ")