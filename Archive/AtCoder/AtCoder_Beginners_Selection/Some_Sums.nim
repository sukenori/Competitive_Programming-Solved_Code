import strutils,sequtils,math
var N,A,B:int
(N,A,B)=stdin.readLine.split.map(parseInt)
var s,a=0
for n in 1..N:
  s=($n).mapIt(($it).parseInt).sum
  if A<=s and s<=B:a+=n
echo a