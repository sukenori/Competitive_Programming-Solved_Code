include atcoder/header
var m=[[0,0,0,0,0],[0,2,1,0,1],[0,1,2,1,0]]
for i in 0..2:
  for j in 0..4:
    if i>0: m[i][j]+=m[i-1][j]-(if j>0: m[i-1][j-1] else: 0)
    if j>0: m[i][j]+=m[i][j-1]
proc s(y,x:int):int=
  let (dy,dx,my,mx)=(y div 2,x div 4,y mod 2,x mod 4)
  m[^1][^1]*dy*dx+m[^1][mx]*dy+m[my][^1]*dx+m[my][mx]
var A,B,C,D=nextInt()+10^9
echo s(D,C)-s(B,C)-s(D,A)+s(B,A)