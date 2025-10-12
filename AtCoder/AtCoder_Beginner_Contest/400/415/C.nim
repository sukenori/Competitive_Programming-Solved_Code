include atcoder/header
import deques
let T=nextInt()
for _ in 1..T:
  let
    N=nextInt()
    S="0"&nextString()
  var
    q=[0].toDeque
    d=false.repeat(2^N)
  d[0]=true
  while q.len>0:
    let i=q.popLast
    for j in 0..<N:
      if (i shr j and 1)==0:
        let ni=i+1 shl j
        if not d[ni] and S[ni]=='0':
          d[ni]=true; q.addLast(ni)
  echo if d[^1]: "Yes" else: "No"