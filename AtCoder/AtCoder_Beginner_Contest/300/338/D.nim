include atcoder/extra/header/chaemon_header
let N,M=nextInt()
X:=Seq[M:nextInt()-1]
l:=Seq[N:0]
for i in 1..<M:
  al:=min(X[i],X[i-1]); ar:=max(X[i],X[i-1]); d:=ar-al
  l[0]+=d; l[al] += -d+(N-d); l[ar] += -(N-d)+d
for i in 1..<N: l[i]+=l[i-1]
echo l.min