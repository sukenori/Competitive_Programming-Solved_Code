include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let
  N = int.input
  T = Seq[N: int.input]
echo T.indexer(Order).orig[0 .. 2].mapIt(it + 1).join(" ")