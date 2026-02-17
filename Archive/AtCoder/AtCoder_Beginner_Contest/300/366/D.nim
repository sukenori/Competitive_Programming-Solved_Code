include atcoder/header
let N=nextInt()
var s=newSeqWith(N+1,newSeqWith(N+1,newSeq[int](N+1)))
for i in 1..N:
  for j in 1..N:
    for k in 1..N:
      let Aijk=nextInt()
      s[i][j][k]=Aijk+s[i-1][j][k]+s[i][j-1][k]+s[i][j][k-1]-s[i][j-1][k-1]-s[i-1][j][k-1]-s[i-1][j-1][k]+s[i-1][j-1][k-1]
let Q=nextInt()
for _ in 1..Q:
  let Lx,Rx,Ly,Ry,Lz,Rz=nextInt()
  echo s[Rx][Ry][Rz]-s[Lx-1][Ry][Rz]-s[Rx][Ly-1][Rz]-s[Rx][Ry][Lz-1]+s[Rx][Ly-1][Lz-1]+s[Lx-1][Ry][Lz-1]+s[Lx-1][Ly-1][Rz]-s[Lx-1][Ly-1][Lz-1]