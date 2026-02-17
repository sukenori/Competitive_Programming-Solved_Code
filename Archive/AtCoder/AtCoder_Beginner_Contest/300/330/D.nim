include atcoder/extra/header/chaemon_header
N:=nextInt()
S:=Seq[N:nextString()]
c:=S.mapIt(it.count('o'))
r:=(block: collect(newSeq):
  for i in 0..<N: S.mapIt(it[i])).mapIt(it.count('o'))
a:=0
for i,Si in S:
  for j,Sij in Si:
    if Sij=='o' and c[i]>=2 and r[j]>=2:
      a+=(c[i]-1)*(r[j]-1)
echo a