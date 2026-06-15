include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  N=int.input
  A,B=Seq[N:int.input-1]
(0..<N).allIt(B[A[it]]==it).asYesNo