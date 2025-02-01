include atcoder/extra/header/chaemon_header
N:=nextInt()
d:=Seq[0:int]
for i in 1..(2*N).float.sqrt.int:
  if (2*N)%i==0:
    d.add(i)
    if i^2!=2*N: d.add((2*N)//i)
a:=0
for di in d:
  if ((N*2)//di-(di-1))%2==0: a+=1
echo a