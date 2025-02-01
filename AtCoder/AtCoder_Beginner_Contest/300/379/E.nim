include atcoder/header
let
  N=nextInt()
  S=nextString()
var
  s= @[0]&(0..<N).toSeq.mapIt(($S[it]).parseInt*(it+1)).cumsummed
  a=newSeq[int]()
for i in 1..N:
  a.add(s[^i] mod 10); s[^(i+1)]+=s[^i] div 10
if s[0]>0: a.add(s[0])
echo a.reversed.join