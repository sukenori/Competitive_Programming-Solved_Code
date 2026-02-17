include atcoder/header
var
  N,M=nextInt()
  t=newSeq[(int,int)](M)
for i in 0..<M:
  let A,B=nextInt()
  t[i]=(A-B,A)
t=t.sortedByIt(it[0])
var a=0
for (d,A) in t:
  let ai=max(0,(N-(A-d)) div d)
  N-=d*ai; a+=ai
echo a