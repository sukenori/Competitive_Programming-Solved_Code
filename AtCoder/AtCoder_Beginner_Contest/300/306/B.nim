include atcoder/extra/header/chaemon_header
A:=Seq[64:nextInt().uint]
a:=0.uint
for i,Ai in A: a+=Ai*2.uint^i
echo a