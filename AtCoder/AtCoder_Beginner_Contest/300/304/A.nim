include atcoder/extra/header/chaemon_header
N:=nextInt()
S:= @string; A:= @int
for i in 0..<N:
  S.add(nextString()); A.add(nextInt())
s:=A.minIndex
for i in s..<s+N: echo S[i%N]