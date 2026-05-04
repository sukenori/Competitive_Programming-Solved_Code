include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N,M=int.input
  F=Seq[N:int.input]
(F.toHashSet.len==N).asYesNo
(F.toCountTable.keys.toSeq.toHashSet==(1..M).toSeq.toHashSet).asYesNo