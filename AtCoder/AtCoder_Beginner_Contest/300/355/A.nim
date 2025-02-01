include atcoder/header
let n=newSeqWith(2,nextInt()).toHashSet
let a=[1,2,3].toHashSet-n
echo if a.len==1: a.toSeq[0] else: -1