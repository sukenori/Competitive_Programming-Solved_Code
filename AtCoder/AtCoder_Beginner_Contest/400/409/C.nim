include atcoder/header
let
  N,L=nextInt()
  d=(@[0]&newSeqWith(N-1,nextInt())).cumsummed.mapIt(it mod L).toCountTable
if L mod 3!=0: echo 0
else:
  let l=L div 3
  var a=0
  for k,v in d:
    if d.hasKey(k+l) and d.hasKey(k+l*2):
      a+=v*d[k+l]*d[k+l*2]
  echo a