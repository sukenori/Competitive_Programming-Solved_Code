include atcoder/header
let N,M,Q=nextInt()
var
  s=newSeq[HashSet[int]](N)
  a=newSeqWith(N,false)
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let X,Y=nextInt()-1
    s[X].incl(Y)
  elif q==2:
    let X=nextInt()-1
    a[X]=true
  else:
    let X,Y=nextInt()-1
    echo if Y in s[X] or a[X]: "Yes" else: "No"