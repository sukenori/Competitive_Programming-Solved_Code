include atcoder/header
let L,R=nextInt()
var a=0
var x=L; while R-x>a:
  var y=R; while gcd(x,y)!=1: y-=1
  a.max=y-x; x+=1
echo a