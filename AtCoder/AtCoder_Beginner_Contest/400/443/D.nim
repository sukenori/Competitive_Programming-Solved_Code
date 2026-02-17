include "/workspaces/AtCoder-Nim/.Library/Template.nim"
loop T:=int.input:
  let
    N=int.input
    R=Seq[N:int.input]
  var
    r=Seq[N:0]
    q:HeapQueue[(int,int)]
    a=0
  for i,Ri in R: q.push((Ri,i))
  while q.len>0:
    let (m,i)=q.pop
    if i>0 and r[i-1]==0:
      r[i-1]=min(R[i-1],m+1); a+=R[i-1]-r[i-1]; q.push((r[i-1],i-1))
    if i<N-1 and r[i+1]==0:
      r[i+1]=min(R[i+1],m+1); a+=R[i+1]-r[i+1]; q.push((r[i+1],i+1))
  echo a