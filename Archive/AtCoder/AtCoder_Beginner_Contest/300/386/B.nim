include atcoder/header
let S=nextString()
var a=0
var j=0
for Si in S:
  if Si=='0':
    if j==0: j+=1
    elif j==1: a+=1; j=0
  else:
    if j==1: a+=1; j=0
    a+=1
if j==1: a+=1
echo a