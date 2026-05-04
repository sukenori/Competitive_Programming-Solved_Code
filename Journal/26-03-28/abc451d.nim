include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
var d:seq[int]
var i=0; while 2^i<=10^9: d.add(2^i); i+=1
var s:HashSet[int]
proc f(i:int)=
  if i>10^9: return
  let j=d.lowerBound(10^(10-($i).len))
  for k in 0..min(j,d.len-1):
    let ni=i*10^(($d[k]).len)+d[k]
    s.incl(ni); f(ni)
f(0)
let N=int.input
echo s.toSeq.sorted[N-1]
