include atcoder/header
import random
randomize()
let
  m=2^61-1
  b=rand(m-1)
proc mlt(a,b:int):int=
  let
    au=a shr 31
    ad=a and (1 shl 31-1)
    bu=b shr 31
    bd=b and (1 shl 31-1)
    m=ad*bu+au*bd
    mu=m shr 30
    md=m and (1 shl 30-1)
    x=(au*bu*2+mu+(md shl 31)+ad*bd)
    r=(x shr 61)+(x and (1 shl 61-1))
  if r<1 shl 61-1: r else: r-(1 shl 61-1)
let T=nextInt()
for _ in 1..T:
  var
    A,B=nextString()
    n=A.len
  A=A&A; B=B&B
  var
    hA,hB,p=newSeq[int](n*2+1)
  p[0]=1
  for i in 0..<n*2:
    hA[i+1]=(mlt(hA[i],b)+A[i].ord) mod m
    hB[i+1]=(mlt(hB[i],b)+B[i].ord) mod m
    p[i+1]=mlt(p[i],b) mod m
  var a = -1
  for i in 0..<n:
    if (hA[i+n]-mlt(hA[i],p[n])+m) mod m==hB[n]:
      a=i; break
  echo a