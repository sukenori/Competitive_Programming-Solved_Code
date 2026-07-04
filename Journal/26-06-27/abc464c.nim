include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,M=int.input
var
  o=Seq[N:(int,int,int)]
  c=Seq[N:0]
  k=0
for i in 0..<N:
  let A,D,B=int.input-1
  o[i]=(D,A,B)
  if c[A]==0: k+=1
  c[A]+=1
var d=o.sorted.toDeque
for i in 0..<M:
  while d.len>0 and d[0][0]==i:
    let (_,A,B)=d.popFirst
    c[A]-=1
    if c[A]==0: k-=1
    if c[B]==0: k+=1
    c[B]+=1
  echo k
