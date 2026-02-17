include atcoder/header
let S=nextString()
let n=S.len
var a=0
for i in 0..<n:
  if S[i]=='U': a+=n-(i+1)+i*2
  else: a+=i+(n-(i+1))*2
echo a