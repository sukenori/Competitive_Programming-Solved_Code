include atcoder/header
let N,K=nextInt()
var
  S=nextString()
  a=0
while true:
  let i=S.find('O'.repeat(K).join)
  if i>=0: S=(S[0..<i]&'X'.repeat(K)&S[i+K..^1]).join; a+=1
  else: echo a; break