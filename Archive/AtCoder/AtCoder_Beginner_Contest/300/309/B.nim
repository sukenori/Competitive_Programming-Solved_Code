include atcoder/extra/header/chaemon_header
N:=nextInt()
A:=Seq[N:nextString()]
echo A[1][0]&A[0][0..^2]
for i in 1..N-2:
  echo A[i+1][0]&A[i][1..^2]&A[i-1][^1]
echo A[^1][1..^1]&A[^2][^1]