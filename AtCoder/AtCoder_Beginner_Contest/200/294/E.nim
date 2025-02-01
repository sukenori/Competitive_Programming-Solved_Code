include atcoder/header
let N,N1,N2=nextInt()
var
  v1,l1=newSeq[int](N1)
  v2,l2=newSeq[int](N2)
for i in 0..<N1:
  let v1i,l1i=nextInt()
  v1[i]=v1i
  if i>0: l1[i]=l1[i-1]+l1i else: l1[i]=l1i
for i in 0..<N2:
  let v2i,l2i=nextInt()
  v2[i]=v2i
  if i>0: l2[i]=l2[i-1]+l2i else: l2[i]=l2i
var i,i1,i2,a=0
while i<N:
  let ni=min(l1[i1],l2[i2])
  if v1[i1]==v2[i2]: a+=ni-i
  i=ni
  if ni==l1[i1]: i1+=1 else: i2+=1
echo a