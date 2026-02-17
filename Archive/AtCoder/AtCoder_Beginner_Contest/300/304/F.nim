include atcoder/extra/header/chaemon_header
N:=nextInt()
S:=nextString().mapIt((it=='#').int)
import atcoder/modint
type mint=modint998244353
a:=1.mint
for i in N.float.sqrt.ceil.int..<N:
  if N%i==0:
    echo i
    ai:=1.mint
    for j in 0..<i:
      s:=0
      for k in 0..<N//i: s=s and S[k*i+j]
      if s==1: ai*=2
    a+=ai-1
echo a