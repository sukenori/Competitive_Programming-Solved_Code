include atcoder/header
let N=nextInt()
var b=newSeqWith(N,nextInt())
var a:seq[int]
for i in 1..N:
  var bi=b
  var f=false
  for j in countdown(bi.len,1):
    if bi[j-1]==j:
      a.add(j); b.delete(j-1); f=true; break
  if not f: echo -1; quit()
echo a.reversed.join("\n")