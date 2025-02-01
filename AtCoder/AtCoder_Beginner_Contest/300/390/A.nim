include atcoder/header
let A=newSeqWith(5,nextInt())
echo if (0..4).toSeq.mapIt(it+1-A[it]).sorted == @[-1,0,0,0,1]: "Yes" else: "No"