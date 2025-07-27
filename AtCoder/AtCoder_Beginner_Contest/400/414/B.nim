include atcoder/header
let N=nextInt()
var
  c=newSeq[string](N)
  l=newSeq[int](N)
for i in 0..<N:
  let
    ci=nextString()
    li=nextInt()
  c[i]=ci; l[i]=li
if l.max>100 or l.sum>100: echo "Too Long"
else: echo (0..<N).toSeq.mapIt(c[it].repeat(l[it])).foldl(a&b)