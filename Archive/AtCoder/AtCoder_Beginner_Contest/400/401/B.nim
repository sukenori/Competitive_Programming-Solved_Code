include atcoder/header
let N=nextInt()
var
  l=false
  a=0
for _ in 1..N:
  let S=nextString()
  if not l and S=="login": l=true
  if l and S=="logout": l=false
  if not l and S=="private": a+=1
echo a