import strutils,sequtils
var N,Y:int
(N,Y)=stdin.readLine.split.map(parseInt)
for i in 0..N:
  for j in 0..N-i:
    if 10000*i+5000*j+1000*(N-i-j)==Y:
      echo i," ",j," ",N-i-j
      quit()
echo "-1 -1 -1"