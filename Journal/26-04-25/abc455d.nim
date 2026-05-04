include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,Q=int.input
var c,p=Seq[N*2:int]
for i in 0..<N*2:
  if i>=N: c[i]=i-N; p[i] = -1 
  if i<N: c[i] = -1; p[i]=i+N
loop Q:
  let C,P=int.input-1
  c[P]=C
  if p[C] != -1: c[p[C]] = -1
  p[C]=P
  dump c
var a:seq[int]
for i in N..<N*2:
  var
    j=i
    ai=0
  while c[j] != -1:
    j=c[j]; ai+=1
  a.add(ai)
echo a.join(" ")
