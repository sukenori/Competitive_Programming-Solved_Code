include atcoder/header
let N=nextInt()
import atcoder/extra/math/eratosthenes
var
  e=initEratosthenes(10^5)
  A=newSeq[int](N)
for i in 0..<N:
  A[i]=e.factor(nextInt()).mapIt(it[1]).sum
echo if A.foldl(a xor b)!=0: "Anna" else: "Bruno"