include atcoder/header
let H,W,Y=nextInt()
import atcoder/dsu
var
  A=newSeq[int]((H+2)*(W+2))
  h=newSeqWith(10^5+1,newSeq[int]())
  d=initDSU((H+2)*(W+2))
for i in 0..H+1:
  for j in 0..W+1:
    if i in 1..H and j in 1..W:
      let Aij=nextInt()
      A[i*(W+2)+j]=Aij; h[Aij].add(i*(W+2)+j)
    else: d.merge(0,i*(W+2)+j)
for Yi in 1..Y:
  for hj in h[Yi]:
    for ah in [hj-(W+2),hj-1,hj+1,hj+(W+2)]:
      if A[ah]<=Yi: d.merge(ah,hj)
  echo (H+2)*(W+2)-d.size(0)