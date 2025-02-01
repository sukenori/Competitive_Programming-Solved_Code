include atcoder/header
let H,W,K=nextInt()
let c=newSeqWith(H,nextString())
var a=0
for i in 0..<1 shl H:
  for j in 0..<1 shl W:
    var s=0
    for k in 0..<H:
      for l in 0..<W:
        if (i shr k and 1)==0 and (j shr l and 1)==0 and c[k][l]=='#':
          s+=1
    if s==K: a+=1
echo a