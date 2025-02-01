include atcoder/header
var S,T=nextString()
S=S.toUpperAscii&"X"
var i=0
for Si in S:
  if Si==T[i]: i+=1
echo if i==3: "Yes" else: "No"