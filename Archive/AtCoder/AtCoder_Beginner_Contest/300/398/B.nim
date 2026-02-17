include atcoder/header
let
  A=newSeqWith(7,nextInt()).toCountTable
  c=A.values.toSeq.sorted(Descending)
echo if c.len>=2 and c[0]>=3 and c[1]>=2: "Yes" else: "No"