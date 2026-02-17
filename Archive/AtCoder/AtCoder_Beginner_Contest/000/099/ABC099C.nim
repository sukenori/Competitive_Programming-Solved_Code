include atcoder/header
let N=nextInt()
var a=N
for i in 0..N:
  var ai=0
  var r6=i; while r6>0: ai+=r6 mod 6; r6=r6 div 6
  var r9=N-i; while r9>0: ai+=r9 mod 9; r9=r9 div 9
  a.min=ai
echo a