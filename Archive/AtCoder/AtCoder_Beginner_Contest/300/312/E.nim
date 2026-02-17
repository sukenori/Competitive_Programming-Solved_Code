include atcoder/extra/header/chaemon_header
N:=nextInt()
n:=Seq[101,101,101:int]
for i in 1..N:
  var X1,Y1,Z1,X2,Y2,Z2=nextInt()
  for x in X1..<X2:
    for y in Y1..<Y2:
      for z in Z1..<Z2:
        n[x][y][z]=i
s:=Seq[N+1:HashSet[int]]
for x in 0..<100:
  for y in 0..<100:
    for z in 0..<100:
      for (dx,dy,dz) in [(1,0,0,),(0,1,0),(0,0,1)]:
        ni:=n[x][y][z]; dni:=n[x+dx][y+dy][z+dz]
        if ni>0 and dni>0 and ni!=dni:
          s[ni].incl(dni); s[dni].incl(ni)
for i in 1..N: echo s[i].len