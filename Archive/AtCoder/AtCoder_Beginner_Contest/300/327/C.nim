include atcoder/extra/header/chaemon_header
A:=Seq[9,9:nextInt()]
f:=true
for i in 0..8:
  if A.mapIt(it[i]).toSet.len!=9: f=false
  if (block: collect(newSeq):
  for j in 0..8: A.mapIt(it[j])).mapIt(it[i]).toSet.len!=9: f=false
for i in [0,3,6]:
  for j in [0,3,6]:
    if (block: collect(newSeq):
    for k in 0..2:
      for l in 0..2:
        A[i+k][j+l]).toSet.len!=9: f=false
echo (if f: "Yes" else: "No")