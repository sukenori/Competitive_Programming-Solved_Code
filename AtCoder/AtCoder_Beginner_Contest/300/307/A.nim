include atcoder/extra/header/chaemon_header
N:=nextInt()
a:=Seq[N:0]
for i in 0..<N:
  for j in 1..7: a[i]+=nextInt()
echo a.join(" ")