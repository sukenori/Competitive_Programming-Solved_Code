include atcoder/header
let N=nextInt()
let s=nextString()
var a=""
for si in s:
  a &= $si
  a.removeSuffix("fox")
echo a.len