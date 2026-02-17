include atcoder/header
let N=nextInt()
var a=0
for i in 1..N.float.sqrt.int:
  if (N-i) mod i==0:
    let m=(N-i) div i
    if m>0 and N div m==N mod m: a+=m
echo a