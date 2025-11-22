include atcoder/header
var X=nextString().toSeq.mapIt(($it).parseInt).sorted
for i in 0..<X.len:
  if X[i]>0: swap(X[i],X[0]); break
echo X.join