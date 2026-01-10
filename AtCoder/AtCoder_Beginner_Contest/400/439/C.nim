include "/workspaces/AtCoder-Nim/.Library/template.nim"
let max = (10 ** 7).isqrt
var good, ng: HashSet[int]
for i in 1 ..< max:
  for j in i+1 .. max:
    let n = i ** 2 + j ** 2
    if n notin good: good.incl(n)
    else: ng.incl(n)
for n in ng:
  good.excl(n)
let N=int.input
var a = good.toSeq.sorted
let n = a.upperBound(N)
a = a[0..<n]
echo a.len
echo a.join(" ")