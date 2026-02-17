include atcoder/header
let N,M=nextInt()
var b=newSeqWith(N,true)
for _ in 1..M:
  let
    A=nextInt()-1
    B=nextString()
  var f=false
  if B=="M": f=b[A]; b[A]=false
  echo if f: "Yes" else: "No"