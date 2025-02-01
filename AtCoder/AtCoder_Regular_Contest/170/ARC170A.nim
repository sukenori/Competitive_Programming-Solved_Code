include atcoder/header
let
  N=nextInt()
  S,T=nextString()
  l=T.find('A')
  r=T.rfind('B')
var d,a=0
for i in 0..<N:
  if S[i]=='B' and T[i]=='A':
    d+=1
    if r>=0 and r<i and d>0: echo -1; quit()
  if S[i]=='A' and T[i]=='B':
    if d>0: a+=1; d-=1
    elif l>=0 and l<i: a+=1
    else: echo -1; quit()
echo a+d