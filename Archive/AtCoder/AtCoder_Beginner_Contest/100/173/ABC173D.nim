include atcoder/extra/header/chaemon_header
N:=nextInt()
A:=Seq[N:nextInt()].sorted(Descending)
a:=0
for i in 1..<N:
  if i==1: a=A[0]
  else: a+=A[i//2]
echo a