include atcoder/header
let H,W,N=nextInt()
let a=newSeqWith(N,nextInt()).cumsummed
var c=newSeqWith(H,newSeq[int](W))
var k=0
for i in 0..<H:
  for j in 0..<W:
    c[i][if i mod 2==0: j else: W-1-j]=a.lowerBound(i*W+j+1)+1
echo c.mapIt(it.join(" ")).join("\n")