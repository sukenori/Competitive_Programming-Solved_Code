include atcoder/header
let A=newSeqWith(4,nextInt()).toCountTable
echo A.values.toSeq.mapIt(it div 2).sum