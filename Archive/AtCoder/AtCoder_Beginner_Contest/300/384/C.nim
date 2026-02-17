include atcoder/header
let p=newSeqWith(5,nextInt())
var s:seq[(int,string)]
for i in 1..<1 shl 5:
  var
    v=0
    k:seq[char]
  for j in 0..<5:
    if (i shr j and 1)==1:
      v-=p[j]
      k.add("ABCDE"[j])
  s.add((v,k.join))
for si in s.sorted: echo si[1]