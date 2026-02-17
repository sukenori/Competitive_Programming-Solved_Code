include atcoder/header
let M=nextInt()
var
  S=newSeqWith(3,nextString().repeat(3)).sorted
  a=int.inf
while true:
  for i in 0..9:
    var j=0
    for k in 0..<M*3:
      if S[j][k]==('0'.ord+i).chr: j+=1
      if j==3:a.min=k; break
  if not S.nextPermutation(): break
echo if a==int.inf: -1 else: a