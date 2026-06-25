include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var a=Seq[N:seq[int]]
for i in 0..<N:
  let K=int.input
  for j in 0..<K:
    let A=int.input-1
    a[A].add(i+1)
for i in 0..<N:
  echo a[i].len," ",a[i].sorted.join(" ")