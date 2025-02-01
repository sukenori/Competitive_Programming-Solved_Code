include atcoder/header
let H1,W1=nextInt()
let A=newSeqWith(H1,newSeqWith(W1,nextInt()))
let H2,W2=nextInt()
let B=newSeqWith(H2,newSeqWith(W2,nextInt()))
proc p(n1,n2:int):seq[seq[int]]=
  var o=0.repeat(n1-n2)&1.repeat(n2)
  while true:
    result.add((0..<n1).toSeq.filterIt(o[it]==1))
    if not o.nextPermutation(): break
let h=p(H1,H2)
let w=p(W1,W2)
for hi in h:
  for wj in w:
    block b:
      for i in 0..<H2:
        for j in 0..<W2:
          if A[hi[i]][wj[j]]!=B[i][j]: break b
      echo "Yes"; quit()
echo "No"