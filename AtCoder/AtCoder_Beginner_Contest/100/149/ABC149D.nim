include atcoder/extra/header/chaemon_header
let N,K=nextInt()
p:=Seq[3:nextInt()]
T:=nextString().toSeq
for i in K..<N:
  if T[i]==T[i-K]: T[i]='a'
a:=0
for i,pi in p: a+=pi*T.count("spr"[i])
echo a