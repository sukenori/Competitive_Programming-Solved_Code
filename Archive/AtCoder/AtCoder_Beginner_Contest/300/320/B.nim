import atcoder/header,algorithm
var
  S=nextString()
  n=S.len
  a=1
for i in 0..n-2:
  for j in 2..n-i:
    var s=S[i..i+j-1]
    if s==s.reversed:a=max(a,j)
echo a