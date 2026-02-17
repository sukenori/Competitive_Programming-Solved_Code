include atcoder/extra/header/chaemon_header
N:=nextInt()
x:=0; y:=0
for i in 1..N:
  let X,Y=nextInt()
  x+=X; y+=Y
if x>y: echo "Takahashi"
elif y>x: echo "Aoki"
else: echo "Draw"