include "/workspaces/AtCoder-Nim/.Library/Template.nim"
include "/workspaces/AtCoder-Nim/.Library/Algorithm/InversionNumber.nim"
let
  N=int.input
  S=("C"&string.input).mapIt(if it=='A': -1 elif it=='B': 1 else: 0)
echo S.cumsummed.inversionNumber