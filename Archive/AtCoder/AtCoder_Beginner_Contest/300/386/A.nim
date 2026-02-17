include atcoder/header
let c=newSeqWith(4,nextString()).toCountTable().values.toSeq.sorted
echo if c == @[2,2] or c == @[1,3]: "Yes" else: "No"