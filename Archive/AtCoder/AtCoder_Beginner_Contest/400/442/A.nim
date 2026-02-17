include "/workspaces/AtCoder-Nim/.Library/Template.nim"
let S=string.input
echo S.mapIt(if it in "ij": 1 else: 0).sum