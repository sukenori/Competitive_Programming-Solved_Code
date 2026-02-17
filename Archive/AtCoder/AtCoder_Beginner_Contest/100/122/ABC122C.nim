include atcoder/extra/header/chaemon_header
let N,Q=nextInt()
S:=" "&nextString()
s:=S.replace("AC","1 ").toSeq.mapIt(it.isDigit.int)
for i in 1..N: s[i]+=s[i-1]
for _ in 1..Q:
  let l,r=nextInt()
  echo s[r-1]-s[l-1]