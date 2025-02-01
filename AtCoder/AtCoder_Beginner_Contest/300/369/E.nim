include atcoder/header
let N,M=nextInt()
var
  g=newSeqWith(N,newSeq[int]())
  b=newSeq[(int,int,int)](M)
  w,wq=newSeqWith(N,newSeq[int](N))
for i in 0..<M:
  let
    U,V=nextInt()-1
    T=nextInt()
  g[U].add(V); g[V].add(U)
  b[i]=(U,V,T)
  w[U][V]=T
import heapqueue
proc D(f,t:int):int=
  var
    q=[(w:0,i:f)].toHeapQueue
    W=newSeqWith(N,int.inf)
    d=newSeqWith(N,false)
  W[f]=0
  while q.len>0:
    let i=q.pop
    if not d[i.i]:
      d[i.i]=true
      if i.i==t: return W[t]
      for j in g[i.i]:
        let nW=i.w+wq[min(i.i,j)][max(i.i,j)]
        if nW<W[j]: W[j]=nW; q.push((nW,j))
let Q=nextInt()
for _ in 1..Q:
  let
    K=nextInt()
    B=newSeqWith(K,nextInt()-1)
  wq=w
  var a=0
  for Bi in B:
    let (Ui,Vi,Ti)=b[Bi]
    wq[Ui][Vi]=0
    a+=Ti
  for i in 0..<N-1:
    a+=D(i,i+1)
  echo a