include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextInt())
var
  c=0.repeat(N-1)
  s:HashSet[int]
for i in 0..<N-1:
  s.incl(A[i]); c[i]+=s.len
s.clear
for i in countdown(N-1,1,1):
  s.incl(A[i]); c[i-1]+=s.len
echo c[0..<N-1].max