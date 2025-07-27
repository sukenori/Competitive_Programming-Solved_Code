include atcoder/header
let S=nextString()
var
  T=""
  f=true
for Si in S:
  if Si=='.':
    if f: T&='o'; f=false else: T&='.'
  else: T&='#'; f=true
echo T