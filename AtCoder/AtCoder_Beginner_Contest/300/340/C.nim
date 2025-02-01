include atcoder/header
let N=nextInt()
var t=[(1,0)].toTable
proc f(i:int):int=
  if not t.hasKey(i): t[i]=i+f(i div 2)+f((i+1) div 2)
  return t[i]
echo f(N)