include atcoder/extra/header/chaemon_header
N:=nextInt()
var t:Table[int,HashSet[int]]
for _ in 1..N:
  let x,y=nextInt()
  if t.hasKeyOrPut(x,[y].toHashSet): t[x].incl(y)
a:=0
k:=t.keys.toSeq
for i in 0..<k.len-1:
  for j in i+1..<k.len:
    l:=(t[k[i]]*t[k[j]]).len
    a+=l*(l-1)//2
echo a