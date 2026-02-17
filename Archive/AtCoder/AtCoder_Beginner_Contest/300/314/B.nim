include atcoder/header
let N=nextInt()
var
  C=newSeq[int](N)
  A=newSeq[newSeq[int]()](N)
for i in 0..<N:
  C[i]=nextInt()
  for j in 1..C[i]: A[i].add(nextInt())
let X=nextInt()
var
  a=newSeq[tuple[i,C:int]]()
  m=int.inf
for i in 0..<N:
  if X in A[i]: a.add((i+1,C[i])); m.min=C[i]
a=a.filterIt(it.C==m)
echo a.len
echo a.sorted.mapIt(it.i).join(" ")