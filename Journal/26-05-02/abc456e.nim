include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
import atcoder/dsu
let T=int.input
for _ in 1..T:
  block b:
    let N,M=int.input
    var U,V=Seq[M:int]; (U,V).input
    let
      W=int.input
      S=Seq[N:string.input]
      n=N*W
    var d=initDSU(n)
    for i in 0..<N:
      for j in 1..W:
        if S[i][j-1]=='o' and S[i][j mod W]=='o':
          if d.same(N*(j-1)+i,N*(j mod W)+i): echo "Yes"; break b
          d.merge(N*(j-1)+i,N*(j mod W)+i)
    for i in 0..<M:
      for j in 1..W:
        let
          u=U[i]-1
          v=V[i]-1
        if S[u][j-1]=='o' and S[v][j mod W]=='o':
          if d.same(N*(j-1)+u,N*(j mod W)+v): echo "Yes"; break b
          d.merge(N*(j-1)+u,N*(j mod W)+v)
        if S[v][j-1]=='o' and S[u][j mod W]=='o':
          if d.same(N*(j-1)+v,N*(j mod W)+u): echo "Yes"; break b
          d.merge(N*(j-1)+v,N*(j mod W)+u)
    echo "No"
