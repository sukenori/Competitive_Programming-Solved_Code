include atcoder/header
let S=nextString()
for k,v in S.toCountTable.pairs:
  if v==1: echo S.find(k)+1