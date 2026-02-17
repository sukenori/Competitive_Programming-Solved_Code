include atcoder/header
var S=nextString().toSeq.mapIt(($it).parseInt)
var
  n=S.len
  a=n
S.add(0)
for i in 0..<n:
  a+=(S[i]+10-S[i+1]) mod 10
echo a