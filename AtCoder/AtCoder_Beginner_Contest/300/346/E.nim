include atcoder/header
let H,W,M=nextInt()
var T,A,X=newSeq[int](M)
var t:Table[int,int]
for i in 0..<M:
  let Ti,Ai,Xi=nextInt()
  T[i]=Ti; A[i]=Ai; X[i]=Xi
  t[Xi]=0
t[0]=H*W
var h,w:HashSet[int]
for i in countdown(M-1,0):
  if T[i]==1:
    if A[i] notin h:
      t[X[i]]+=W-w.len; t[0]-=W-w.len
      h.incl(A[i])
  else:
    if A[i] notin w:
      t[X[i]]+=H-h.len; t[0]-=H-h.len
      w.incl(A[i])
var nt=t
for k,v in t.pairs:
  if v==0: nt.del(k)
echo nt.len
for k in nt.keys.toSeq.sorted:
  echo k," ",nt[k]