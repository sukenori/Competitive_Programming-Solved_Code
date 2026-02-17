include atcoder/header
let T=nextInt()
for _ in 1..T:
  let
    N=nextInt()
    S=newSeqWith(N,nextInt())
    s=S[1..<N-1].sorted
  var
    i=0
    h=S[i]
    a=1
  while true:
    if h*2>=S[^1]: a+=1; echo a; break
    elif (N>2 and h*2<s[i]) or i==N-2: echo -1; break
    i=s[i..^1].upperBound(h*2)+i
    h=s[i-1]; a+=1