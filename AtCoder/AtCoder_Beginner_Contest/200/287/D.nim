include atcoder/header
let S,T=nextString()
var l,r= @[true]
for i in 0..<T.len:
  l.add(l[^1] and (S[i]==T[i] or S[i]=='?' or T[i]=='?'))
  r.add(r[^1] and (S[^(i+1)]==T[^(i+1)] or S[^(i+1)]=='?' or T[^(i+1)]=='?'))
for i in 0..T.len:
  echo if l[i] and r[^(i+1)]: "Yes" else: "No"