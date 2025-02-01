include atcoder/extra/header/chaemon_header
import atcoder/extra/other/bitutils
let N=nextInt()
var t=newTable[int,int]()
for _ in 1..N:
  var S,C=nextInt()
  while S&1==0: S>>=1; C<<=1
  if t.hasKeyOrPut(S,C): t[S]+=C
echo t.values.toSeq.mapIt(it.toBitStr.count("1")).sum