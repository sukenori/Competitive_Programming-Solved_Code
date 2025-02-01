include atcoder/extra/header/chaemon_header
let
  N=nextInt()
  Td=nextString()
  S=Seq[N:nextString()]
var a:seq[int]
for i,Si in S:
  let m=min(Td.len,Si.len)
  var j=0; while Td[j]==Si[j]:
    j+=1; if j==m: break
  var k=0; while Td[^(k+1)]==Si[^(k+1)]:
    k+=1; if k==m: break
  if abs(Td.len-Si.len)==1 and j+k>=m: a.add(i+1)
  if Td.len==Si.len and j+k>=m-1: a.add(i+1)
echo a.len
echo a.join(" ")