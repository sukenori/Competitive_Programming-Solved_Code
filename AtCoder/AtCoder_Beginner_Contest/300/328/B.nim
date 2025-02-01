include atcoder/extra/header/chaemon_header
N:=nextInt()
D:=Seq[N:nextInt()]
a:=0
for i in 1..N:
  for j in 1..D[i-1]:
    if ($i & $j).toHashSet.len==1: a+=1
echo a