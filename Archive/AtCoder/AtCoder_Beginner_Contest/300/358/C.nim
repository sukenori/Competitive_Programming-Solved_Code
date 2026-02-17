include atcoder/header
let N,M=nextInt()
let S=newSeqWith(N,nextString().toSeq.mapIt(if it=='o': 1 else: 0))
var a=N
for i in 1..<1 shl N:
  block b:
    for j in 0..<M:
      var f=0
      for k in 0..<N:
        if (i shr k and 1)==1: f=f or S[k][j]
      if f==0: break b
    var ai=0
    for j in 0..<N:
      if (i shr j and 1)==1: ai+=1
    a.min=ai
echo a