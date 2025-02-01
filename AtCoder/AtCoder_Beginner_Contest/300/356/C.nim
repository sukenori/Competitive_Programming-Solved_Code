include atcoder/header
let N,M,K=nextInt()
var
  A=newSeq[seq[int]](M) 
  R=newSeq[string](M)
for i in 0..<M:
  let C=nextInt()
  A[i]=newSeqWith(C,nextInt())
  R[i]=nextString()
var a=0
for i in 0..<1 shl N:
  block b:
    for j,Aj in A:
      var c=0
      for Ak in Aj: c+=i shr (Ak-1) and 1
      if not ((c>=K and R[j]=="o") or (c<K and R[j]=="x")): break b
    a+=1
echo a