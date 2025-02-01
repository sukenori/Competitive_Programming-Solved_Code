include atcoder/header
let H,W=nextInt()
let A=newSeqWith(H,nextString())
echo if A.mapIt(it.count('#')).foldl(a+b)==H+W-1: "Possible" else: "Impossible"