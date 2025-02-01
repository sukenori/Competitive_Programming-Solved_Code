include atcoder/header
let C=newSeqWith(12,nextInt())
echo if (0..2).toSeq.allIt(not (C[3+it]<=C[6+it] or C[9+it]<=C[it])): "Yes" else: "No"