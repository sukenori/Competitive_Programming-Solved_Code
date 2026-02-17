import strutils,sequtils
var
  N=stdin.readLine.parseInt
  lt,lx,ly,t,x,y:int
for i in 1..N:
  (t,x,y)=stdin.readLine.split.map(parseInt)
  if t mod 2!=(x+y) mod 2 or abs(x-lx)+abs(y-ly)>t-lt:
    echo "No"; quit()
  (lt,lx,ly)=(t,x,y)
echo "Yes"