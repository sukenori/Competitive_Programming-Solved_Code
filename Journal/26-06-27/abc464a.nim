include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let S=string.input.sorted
if S[S.len div 2]=='E': echo "East"
else: echo "West"