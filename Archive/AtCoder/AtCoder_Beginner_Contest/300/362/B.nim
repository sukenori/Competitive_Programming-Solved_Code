include atcoder/header
var x,y=newSeq[int](3)
for i in 0..2:
  let xi,yi=nextInt()
  x[i]=xi; y[i]=yi
let l=(0..2).toSeq.mapIt((x.rotatedLeft(1)[it]-x[it])^2+(y.rotatedLeft(1)[it]-y[it])^2).sorted(Descending)
echo if l[0]==l[1]+l[2]: "Yes" else: "No"