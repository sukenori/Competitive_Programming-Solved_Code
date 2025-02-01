include atcoder/header
let n=nextInt()
var s=newSeqWith(26,newSeqWith(n,0))
for i in 0..<n:
  let S=nextString()
  for Si in S: s[Si.ord-'a'.ord][i]+=1
var a:seq[string]
for i in 0..<26:
  a.add($(('a'.ord+i).char).repeat(s[i].min))
echo a.join