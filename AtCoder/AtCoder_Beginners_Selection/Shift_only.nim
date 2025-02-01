import strutils,sequtils
var
  N=stdin.readLine.parseInt
  A=stdin.readLine.split.map parseInt
  i=0
while true:
  if A.allIt(it mod 2==0):
    A.applyIt(it div 2)
  else: break
  i+=1
echo i