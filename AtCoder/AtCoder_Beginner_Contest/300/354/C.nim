include atcoder/header
let N=nextInt()
var c=newSeq[tuple[A,C,i:int]](N)
for i in 0..<N:
  let A,C=nextInt()
  c[i]=(A,C,i+1)
c.sort(Descending)
var a=(1..N).toSeq.toHashSet
var m=c[0].C
for i in 1..<N:
  if c[i].C>m: a.excl(c[i].i)
  else: m=c[i].C
echo a.len
echo a.toSeq.sorted.join(" ")