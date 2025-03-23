include atcoder/header
let S=nextString()
var
  a=""
  c=0
for i,Si in S:
  if Si=='W':c+=1
  elif c>0:
    if Si=='A': a&='A'&'C'.repeat(c)
    else: a&='W'.repeat(c)&Si
    c=0
  else: a&=Si
if c>0: a&='W'.repeat(c)
echo a