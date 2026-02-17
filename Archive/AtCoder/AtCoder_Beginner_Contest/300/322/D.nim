include atcoder/extra/header/chaemon_header
import atcoder/extra/math/matrix
var P=newSeqWith(3,newSeqWith(4,nextString().mapIt((it=='#').int)))
iterator r(Pi:seq[seq[int]]):seq[seq[int]]=
  var rPi=Pi
  for i in 0..3:
    if i>0:
      rPi=block: collect(newSeq): (for j in 0..3<<1: rPi.mapIt(it[j]))
    yield rPi
iterator s(Pi:seq[seq[int]]):seq[seq[int]]=
  for i in -3..3:
    for j in -3..3:
      block b:
        var sPi=newSeqWith(4,newSeqWith(4,0))
        for k in 0..3:
          for l in 0..3:
            if Pi[k][l]==1:
              if not(0<=k+i and k+i<=3 and 0<=l+j and l+j<=3): break b
              else: sPi[k+i][l+j]=Pi[k][l]
        yield sPi
for rP1 in r(P[1]):
  for rP2 in r(P[2]):
    for sP0 in s(P[0]):
      for sP1 in s(rP1):
        for sP2 in s(rP2):
          if (sP0+sP1+sP2).foldl(concat(a,b)).allIt(it==1): echo "Yes"; quit()
echo "No"