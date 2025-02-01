include atcoder/header
let N=nextInt()
var
  a= @[@['a']]
  i=1
proc f()=
  if i<N:
    var na:seq[seq[char]]
    for ai in a:
      for j in 'a'.ord..ai.mapIt(it.ord).max+1:
        na.add(ai & @[j.chr])
    a=na; i+=1; f()
f()
for ai in a.mapIt(it.join).sorted:
  echo ai