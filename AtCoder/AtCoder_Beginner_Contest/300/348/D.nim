include atcoder/header
let H,W=nextInt()
var A=newSeq[string](H)
var Si,Sj,Ti,Tj:int
for i in 0..<H:
  A[i]=nextString()
  if 'S' in A[i]: Si=i; Sj=A[i].find('S')
  if 'T' in A[i]: Ti=i; Tj=A[i].find('T')
var e=newSeqWith(H,newSeqWith(W,-1))
var t:Table[(int,int),int]
let N=nextInt()
for _ in 1..N:
  let R,C,E=nextInt()
  t[(R-1,C-1)]=E
import deques
var q=[(Si,Sj)].toDeque
import atcoder/extra/other/direction
while q.len>0:
  let (i,j)=q.popFirst
  if t.hasKey((i,j)): e[i][j].max=t[(i,j)]
  for (ni,nj) in (i,j).neighbor(dir4,(0..<H,0..<W)):
    if A[ni][nj]!='#' and e[i][j]>0 and e[ni][nj]<e[i][j]-1:
      e[ni][nj]=e[i][j]-1
      q.addLast((ni,nj))
echo if e[Ti][Tj] != -1: "Yes" else: "No"