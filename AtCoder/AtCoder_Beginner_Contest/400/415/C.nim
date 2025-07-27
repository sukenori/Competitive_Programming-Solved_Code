include atcoder/header
import deques
let T=nextInt()
for _ in 1..T:
  let
    N=nextInt()
    S="0"&nextString()
  var
    q=[0].toDeque
    a=false.repeat(2^N)
  a[0]=true
  for i in 0..<2^N-1:
    if a[i]:
      for j in 0..<N:
        let ni=i+1 shl j
        if (i shr j and 1)==0 and S[ni]=='0': a[ni]=true
  echo if a[^1]: "Yes" else: "No"