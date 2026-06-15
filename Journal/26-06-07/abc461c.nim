include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,K,M=int.input
var
  j:Table[int,int]
  s=Seq[0:int]
loop N:
  let C,V=int.input
  if not j.hasKey(C): j[C]=V
  else:
    s.add(min(j[C],V))
    j[C].chMax(V)
echo j.values.toSeq.sorted[^min(M,j.len)..^1].sum+(s&j.values.toSeq.sorted[0..<min(M,j.len)]).sorted[^(K-M)..^1].sum