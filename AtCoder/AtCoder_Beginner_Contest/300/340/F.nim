include atcoder/header
var
  b=nextInt()
  a= -nextInt()
let g=gcd(a,b)
if g>2: echo -1; quit()
proc extgcd(a,b:int):(int,int)=
  if b==0: return (1,0)
  var x1,y1:int
  (x1,y1)=extgcd(b,a mod b)
  let x0=y1
  let y0=x1-y1*(a div b)
  return (x0,y0)
echo extgcd(a,b)[0]*(2 div g)," ",extgcd(a,b)[1]*(2 div g)