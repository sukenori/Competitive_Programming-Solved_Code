include atcoder/header
let N,K=nextInt()
let A=newSeqWith(N,nextInt()).toHashSet.toSeq
echo (1+K)*K div 2-A.filterIt(it<=K).sum