include atcoder/header
let s=nextString().replace("BC","D")
var c,a=0
for si in s:
  if si=='A': c+=1
  elif si=='D': a+=c
  else: c=0
echo a