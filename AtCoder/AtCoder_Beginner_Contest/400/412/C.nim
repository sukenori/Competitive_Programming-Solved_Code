include atcoder/header
let T=nextInt()
for _ in 1..T:
  let
    N=nextInt()
    S=newSeqWith(N,nextInt())
  var
    d=false.repeat(N)
    h=S[0]
    a=1
  d[0]=true
  while true:
    if S[^1]<=h*2: echo a+1; break
    else:
      let s=(0..<N).toSeq.filterIt(not d[it] and S[it]<=h*2)
      if s.len==0: echo -1; break
      else:
        let i=s.sortedByIt(S[it])[^1]
        d[i]=true; h=S[i];a+=1