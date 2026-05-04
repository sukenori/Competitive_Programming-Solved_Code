include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
var t:HeapQueue[int]
let Q=int.input
for i in 1..Q:
  let q,h=int.input
  if q==1: t.push(h)
  else:
    while t.len>0 and t[0]<=h:
      var n=t.pop
  echo t.len
