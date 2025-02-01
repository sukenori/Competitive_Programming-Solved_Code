include atcoder/header
let N,M=nextInt()
var
  r=(0..9).toSeq
  a=(0,0)
for i in 1..N:
  for j in 1..9:
    r[j]=(if i==1: r[j] else: (r[j]*10)+j) mod M
    if r[j]==0: a.max=(i,j)
echo if a==(0,0): "-1" else: ($a[1]).repeat(a[0])