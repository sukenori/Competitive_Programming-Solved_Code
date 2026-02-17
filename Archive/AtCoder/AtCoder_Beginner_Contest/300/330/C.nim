include atcoder/extra/header/chaemon_header
D:=nextInt()
a:=int.inf
for x in 0..sqrt(D.float).floor.int:
  r:=sqrt((D-x^2).float)
  for y in r.floor.int..r.ceil.int:
    a.min=abs(x^2+y^2-D)
echo a