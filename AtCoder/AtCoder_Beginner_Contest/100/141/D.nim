include atcoder/header
import heapqueue
let N,M=nextInt()
var A=newSeqWith(N,-nextInt()).toHeapQueue
for _ in 1..M: A.push(A.pop div 2)
var a=0
for _ in 1..N: a+=A.pop
echo -a