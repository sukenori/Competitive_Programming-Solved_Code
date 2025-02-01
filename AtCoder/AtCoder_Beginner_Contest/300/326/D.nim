include atcoder/extra/header/chaemon_header
N:=nextInt()
let R,C=nextString()
import atcoder/extra/other/algorithmutils
p:=Seq[seq[int]]
for i in (0..<N).toSeq.permutation: p.add(i)
for A in p.repeat(3).product:
  block b:
    for i in 0..<N:
      if A.mapIt(it[i]).toHashSet.len<3: break b
      if A.mapIt(it[i]).minIndex!=R[i]-'A': break b
      if A.mapIt(it.find(i)).minIndex!=C[i]-'A': break b
    a:=Seq[N,N:'.']
    for j,Aj in A:
      for k,Ak in Aj:
        a[k][Ak]='A'+j
    echo "Yes"
    for aj in a: echo aj.join
    quit()
echo "No"