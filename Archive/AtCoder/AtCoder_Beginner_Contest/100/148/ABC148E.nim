include atcoder/header
let N=nextInt()
if N mod 2==0:
  var a=0
  var i=5; while i<=N:
    a+=N div 2 div i
    i*=5
  echo a
else: echo 0