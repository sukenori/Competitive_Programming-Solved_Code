include atcoder/header
var S=nextString()
if S.len<26:
  for i in 'a'.ord..'z'.ord:
    if i.chr notin S: echo S & $i.chr; break
else:
  for i in countdown(25,1):
    if S[i-1]<S[i]:
      for j in S[i-1..^1].sorted:
        if S[i-1]<j: echo S[0..<i-1] & $j; quit()
  echo -1