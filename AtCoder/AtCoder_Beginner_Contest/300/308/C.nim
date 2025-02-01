include atcoder/header
let N=nextInt()
import rationals
var m=newSeq[(Rational[int],int)](N)
for i in 0..<N:
  let A,B=nextInt()
  m[i]=(-A//(A+B),i+1)
echo m.sorted.mapIt(it[1]).join(" ")