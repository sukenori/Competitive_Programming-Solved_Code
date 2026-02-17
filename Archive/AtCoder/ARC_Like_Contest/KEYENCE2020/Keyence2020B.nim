include atcoder/header
let N=nextInt()
var R=newSeq[(int,int)](N)
for i in 0..<N:
  let Xi,Li=nextInt()
  R[i]=(Xi+Li,Xi-Li)
var
  lr= -int.inf
  a=0
for (ri,li) in R.sorted:
  if lr<=li: a+=1; lr=ri
echo a