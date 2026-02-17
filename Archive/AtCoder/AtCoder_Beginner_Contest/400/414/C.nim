include atcoder/header
let A,N=nextInt()
import deques
var s=0
proc f(n:int)=
  var d=n
  if n<=N:
    var a:Deque[int]
    while d>0: a.addFirst(d mod A); d=d div A
    if a.toSeq==a.toSeq.reversed: s+=n
for i in 1..<10^(($N).len.ceilDiv(2)):
  f((($i)&($i).reversed.join).parseInt)
  f((($i)&($i).reversed[1..^1].join).parseInt)
echo s