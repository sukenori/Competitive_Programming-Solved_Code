import strutils,sequtils,algorithm
var
  N=stdin.readLine.parseInt
  a=(stdin.readLine.split.map(parseInt)).sorted(Descending)
var s=0
for i in 0..<N:
  if i mod 2==0:s+=a[i]
  else:s-=a[i]
echo s