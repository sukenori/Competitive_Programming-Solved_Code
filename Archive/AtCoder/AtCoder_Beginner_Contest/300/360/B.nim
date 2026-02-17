include atcoder/header
let S,T=nextString()
for w in 1..<S.len:
  for c in 0..<w:
    if c>w: continue
    var s=""
    var i=0; while i+c<S.len:
      s=s&($S[i+c])
      i+=w
    if s==T: echo "Yes"; quit()
echo "No"