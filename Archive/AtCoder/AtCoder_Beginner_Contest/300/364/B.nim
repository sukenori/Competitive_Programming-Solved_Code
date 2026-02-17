include atcoder/header
let H,W=nextInt()
var i,j=nextInt()
var C=newSeqWith(H,"#"&nextString()&"#")
for i in [0,H+1]: C.insert("#".repeat(W+2),i)
let X=nextString()
for Xi in X:
  let
    di=(Xi=='D').int-(Xi=='U').int
    dj=(Xi=='R').int-(Xi=='L').int
  if C[i+di][j+dj]=='.': i+=di; j+=dj
echo i," ",j