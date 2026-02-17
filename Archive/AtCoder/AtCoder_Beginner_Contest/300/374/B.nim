include atcoder/header
let S,T=nextString()
for i in 0..<max(S.len,T.len):
  if i==min(S.len,T.len) or S[i]!=T[i]: echo i+1; quit()
echo 0