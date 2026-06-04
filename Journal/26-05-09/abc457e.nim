include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,M=int.input
var l,r:Table[int,int]
loop M:
  let L,R=int.input
  if not l.hasKey(L): l[L]=R
  else: l[L].chMax(R)
  if not r.hasKey(R): r[R]=L
  else: r[R].chMin(L)
let Q=int.input
loop Q:
  let S,T=int.input
  (l.hasKey(S) and r.hasKey(T) and r[T]<=l[S]).asYesNo