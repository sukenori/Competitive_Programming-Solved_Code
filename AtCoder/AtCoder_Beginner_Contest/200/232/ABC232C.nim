include atcoder/header
let N,M=nextInt()
var g1=newSeqWith(N,newSeqWith(N,0))
for _ in 1..M:
  let A,B=nextInt()-1
  g1[A][B]=1; g1[B][A]=1
var g2=newSeqWith(N,newSeqWith(N,0))
for _ in 1..M:
  let C,D=nextInt()-1
  g2[C][D]=1; g2[D][C]=1
var p=(0..<N).toSeq
while true:
  var f=true
  for i in 0..<N:
    for j in 0..<N:
      if g1[p[i]][p[j]]!=g2[i][j]: f=false
  if f: echo "Yes"; quit()
  if not p.nextPermutation(): break
echo "No"