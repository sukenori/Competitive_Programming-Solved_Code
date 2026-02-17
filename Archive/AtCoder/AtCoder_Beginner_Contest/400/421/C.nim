include atcoder/header
let
  N=nextInt()
  S=nextString()
var a,b,sa,sb=0
for i,Si in S:
  if Si=='A': sa+=abs(i-a*2); a+=1
  else: sb+=abs(i-b*2); b+=1
echo min(sa,sb)