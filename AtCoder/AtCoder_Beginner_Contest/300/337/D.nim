include atcoder/extra/header/chaemon_header
var H,W,K=nextInt()
S:=Seq[H,W:0]
for i in 0..<H:
  Si:=nextString()
  for j in 0..<W:
    if Si[j]=='.': S[i][j]=1
    if Si[j]=='x': S[i][j]= -2*10^5
a:=K+1; s:=0
proc f()=
  if W>=K:
    for i in 0..<H:
      s=S[i][0..K-1].sum; j:=0
      while true:
        if s>=0: a.min=s
        if j<W-K: s=s-S[i][j]+S[i][K+j]; j+=1
        else: break
f()
S=(block: collect(newSeq):
  for i in 0..<W<<1: S.mapIt(it[i]))
swap(H,W)
f()
echo if a==K+1: -1 else: a