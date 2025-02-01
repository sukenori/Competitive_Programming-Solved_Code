include atcoder/header
let
  S=nextString()
  n=S.len
var a:seq[char]
import bitops
for _ in 1..nextInt():
  let
    K=nextInt()-1
    i=K mod n
  if (K div n).countSetBits mod 2==0: a.add(S[i])
  else:
    if S[i].isUpperAscii: a.add(S[i].toLowerAscii)
    else: a.add(S[i].toUpperAscii)
echo a.join(" ")