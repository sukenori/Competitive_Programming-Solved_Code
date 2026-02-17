include atcoder/header
let T=nextInt()
for _ in 1..T:
  let
    N=nextInt()
    A=newSeqWith(N*2,nextInt())
  var p:Table[(int,int),HashSet[int]]
  for i in 0..<N*2-1:
    if A[i]<A[i+1]:
      if p.hasKeyOrPut((A[i],A[i+1]),[i,i+1].toHashSet):
        p[(A[i],A[i+1])].incl(i); p[(A[i],A[i+1])].incl(i+1)
    else:
      if p.hasKeyOrPut((A[i+1],A[i]),[i+1,i].toHashSet):
        p[(A[i+1],A[i])].incl(i+1); p[(A[i+1],A[i])].incl(i)
  var a=0
  for k,v in p:
    if not p.hasKey((k[0],k[0])) and not p.hasKey((k[1],k[1])) and v.len==4: a+=1
  echo a