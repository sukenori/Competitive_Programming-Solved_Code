include atcoder/header
var
  Sx,Sy=nextInt()
  Tx,Ty=nextInt()
if Sx<Tx and (Sx+Sy) mod 2==1: Sx-=1
if Tx<Sx and (Sx+Sy) mod 2==0: Sx+=1
let
  dx=abs(Sx-Tx)
  dy=abs(Sy-Ty)
echo dy+max(0,dx-dy) div 2