include atcoder/header
let
  K=nextInt()
  S,T=nextString()
var c=newSeq[int](2)
for i in 0..<min(S.len,T.len):
  if S[i]==T[i]: c[0]+=1
  else: break
for i in 1..min(S.len,T.len):
  if S[^i]==T[^i]: c[1]+=1
  else: break
echo if abs(S.len-T.len)<=1 and c[0]+c[1]>=max(S.len,T.len)-1: "Yes" else: "No"