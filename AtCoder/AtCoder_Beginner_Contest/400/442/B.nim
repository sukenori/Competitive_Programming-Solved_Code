include "/workspaces/AtCoder-Nim/.Library/Template.nim"
var
  v=0
  p=false
int.input.query:
  op 1: v+=1
  op 2: v=max(0,v-1)
  op 3: p=not p
  echo if v>=3 and p==true: "Yes" else: "No"