include atcoder/header
let N=nextInt()
var
  t:Table[int,int]
  B=newSeq[int](N)
for i in 0..<N:
  let A=nextInt()
  if not t.hasKey(A): B[i]= -1
  else: B[i]=t[A]+1
  t[A]=i
echo B.join(" ")