include atcoder/header
let N=nextInt()
var x=newSeq[seq[int]](N)
for i in 0..<N:
  x[i]=(i*N+1..(i+1)*N).toSeq
  for j in 0..N div 2-1:
    swap(x[i][j*2],x[i][j*2+1])
echo x.mapIt(it.join(" ")).join("\n")