include atcoder/header
let
  N=nextInt()
  A=newSeqWith(N,nextString().toSeq)
for x in 1..N:
  for y in 1..N:
    var (nx,ny)=(x,y)
    for _ in 1..[x,N+1-x,y,N+1-y].min mod 4:
      (nx,ny)=(N+1-ny,nx)
    stdout.write(A[nx-1][ny-1])
  stdout.write("\n")