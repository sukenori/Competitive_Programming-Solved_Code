include atcoder/header
let N,M=nextInt()
var s:HashSet[(int,int)]
for _ in 1..M:
  block b:
    let R,C=nextInt()
    for i in max(1,R-1)..min(R+1,N):
      for j in max(1,C-1)..min(C+1,N):
        if (i,j) in s: break b
    s.incl((R,C))
echo s.len