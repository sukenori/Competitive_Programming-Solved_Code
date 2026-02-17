include atcoder/header
let N,A,B=nextInt()
if N<A: echo 0
else:
  if A<=B: echo N-A+1
  else: echo (N div A-1)*B+min(N mod A+1,B)