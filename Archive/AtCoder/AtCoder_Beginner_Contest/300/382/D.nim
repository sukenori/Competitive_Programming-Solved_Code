include atcoder/header
let N,M=nextInt()
var
  ai=(0..<N).toSeq.mapIt(1+it*10)
  a= @[ai]
while true:
  ai[^1]+=1
  var j=1; while ai[^j]>M-(j-1)*10 and j<N:
    ai[^(j+1)]+=1; j+=1
  for k in countdown(j-1,1):
    ai[^k]=ai[^(k+1)]+10
  if ai[0]>M-(N-1)*10: break else: a.add(ai)
echo a.len
for ai in a: echo ai.join(" ")