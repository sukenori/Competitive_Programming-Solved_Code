import strutils
let A,B,C,X=stdin.readLine.parseInt
var a=0
for i in 0..A:
  for j in 0..B:
    for k in 0..C:
      if 500*i+100*j+50*k==X:a+=1
echo a