include atcoder/extra/header/chaemon_header
let N,M=nextInt()
var S,T=nextString()
i:=0
while i<=N-M:
  if (block: collect(newSeq):(for j in 0..<M: S[i+j]==T[j] or S[i+j]=='#')).allIt(it):
    f:=false
    for j in 0..<M:
      if S[i+j]!='#': f=true; S[i+j]='#'
    if f: i=max(0,i-(M-1)); continue
  i+=1
echo if S.allIt(it=='#'): "Yes" else: "No"