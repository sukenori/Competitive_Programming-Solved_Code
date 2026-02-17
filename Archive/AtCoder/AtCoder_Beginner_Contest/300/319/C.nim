include atcoder/header
let
  c=newSeqWith(9,nextInt())
  l=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
var
  p=(0..8).toSeq
  a=0
while true:
  block P:
    var d=newSeq[int](8)
    for i in p:
      for k,j in l:
        if j.contains(i):
          if d[k]==0: d[k]=c[i]
          elif d[k]==c[i]: a+=1; break P
          else: d[k]=10
  if not p.nextPermutation(): break
echo 1-a/fac(9)