include atcoder/header
let T=nextInt()
for _ in 1..T:
  let
    N,M,K=nextInt()
    S=nextString()
  var g=newSeq[seq[int]](N)
  for _ in 1..M:
    let u,v=nextInt()-1
    g[u].add(v)
  var dp=newSeqWith(2*K+1,newSeq[bool](N))
  for i in 0..<N: dp[2*K][i]=S[i]=='A'
  for i in countdown(2*K-1,0):
    for j in 0..<N:
      if i mod 2==0: dp[i][j]=g[j].anyIt(dp[i+1][it])
      else: dp[i][j]=not g[j].anyIt(not dp[i+1][it])
  echo if dp[0][0]: "Alice" else: "Bob"