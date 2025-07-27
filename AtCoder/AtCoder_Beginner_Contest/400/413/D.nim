include atcoder/header
let T=nextInt()
import heapqueue,rationals
for _ in 1..T:
  let N=nextInt()
  var
    A=newSeq[int](N)
    q:HeapQueue[(int,int)]
  for i in 0..<N:
    let Ai=nextInt()
    A[i]=Ai
    q.push((Ai.abs,Ai))
  if A.mapIt(it.abs).toHashSet.len==1 and (A.countIt(it>0)==N.floorDiv(2) or A.countIt(it>0)==N.ceilDiv(2)): echo "Yes"; continue
  var
    lq=q.pop[1]
    nq=q.pop[1]
    nr=nq//lq
    lr=nr
    f=true
  lq=nq
  if N>2:
    for i in 2..<N:
      nq=q.pop[1]
      nr=nq//lq
      if nr!=lr: f=false
      lq=nq
      lr=nr
  echo if f: "Yes" else: "No"