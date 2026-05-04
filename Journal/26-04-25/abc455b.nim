include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let
  H,W=int.input
  S=Seq[H:string.input]
var a=0
for h1 in 0..<H:
  for h2 in h1..<H:
    for w1 in 0..<W:
      for w2 in w1..<W:
        var f=true
        for i in h1..h2:
          for j in w1..w2:
            if S[i][j]!=S[h1+h2-i][w1+w2-j]: f=false
        if f: a+=1
echo a