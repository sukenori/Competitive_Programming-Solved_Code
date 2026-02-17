include atcoder/header
let
  N=nextInt()
  d=N div 2
var a='-'.repeat(N); a[d]='='
if N mod 2==0: a[d-1]='='
echo a.join