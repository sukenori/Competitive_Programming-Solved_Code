include atcoder/header
let A=newSeqWith(9,nextInt())
var t:Table[seq[int],int]
proc f(c:seq[int]):int=
  if t.hasKey(c): return t[c]
  for i in 1..2:
    let w=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    for wi in w:
      if wi.mapIt(c[it]).allIt(it==i): t[c]=i; return i
  if c.count(0)==0:
    proc s(i:int):int=
      (0..8).toSeq.filterIt(c[it]==i).mapIt(A[it]).sum
    if s(1)>s(2):
      t[c]=1; return 1
    else:
      t[c]=2; return 2
  let n=if c.count(1)==c.count(2): 1 else:2
  var nf:seq[int]
  for i in 0..8:
    var nc=c
    if c[i]==0: nc[i]=n; nf.add(f(nc))
  if nf.allIt(it==3-n):
    t[c]=3-n; return 3-n
  else:
    t[c]=n; return n
echo if f(newSeqWith(9,0))==1: "Takahashi" else: "Aoki"