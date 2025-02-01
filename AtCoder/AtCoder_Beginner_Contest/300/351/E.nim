include atcoder/header
let N=nextInt()
var p=newSeqWith(2,newSeq[int](N))
for i in 0..<N:
  let X,Y=nextInt()
  p[0][i]=X-Y; p[1][i]=X+Y
var a=0
for i in 0..1:
  for j in 0..1:
    let pj=p[j].filterIt(it.abs mod 2==i).sorted
    let n=pj.len
    for k in 0..<n: a+=(2*k+1-n)*pj[k]
echo a div 2