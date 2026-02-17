include atcoder/extra/header/chaemon_header
N:=nextInt()
var tx,ty=Seq[N:int]
for i in 0..<N:
  let x,y=nextInt()
  tx[i]=x; ty[i]=y
var s:HashSet[(int,int)]
for i in 0..<N-1:
  for j in i+1..<N:
    dx:=tx[j]-tx[i]; dy:=ty[j]-ty[i]; d:=gcd(dx,dy)
    s.incl((dx//d,dy//d)); s.incl((-dx//d,-dy//d))
echo s.len