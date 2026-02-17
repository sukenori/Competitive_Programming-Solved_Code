include atcoder/header
let T=nextString()
let N=nextInt()
var t=[("",0)].toTable
for _ in 1..N:
  let A=nextInt()
  let S=newSeqWith(A,nextString())
  let ti=t
  for Si in S:
    for kj,vj in ti.pairs:
      let nk=kj&Si
      if T.startsWith(nk):
        if t.hasKeyOrPut(nk,vj+1): t[nk].min=vj+1
echo if t.hasKey(T): t[T] else: -1