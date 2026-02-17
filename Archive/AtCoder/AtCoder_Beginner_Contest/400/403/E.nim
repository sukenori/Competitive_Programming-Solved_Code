include atcoder/header
import random
randomize()
let
  m=2^61-1
  b=rand(m-1)
proc H(s:string):int=
  for i in 0..<s.len:
    result=(result*b+s[i].ord) mod m
let Q=nextInt()
var
  X:Table[int,int]
  Y:seq[(string,int)]
  a=newSeq[int](Q)
for i in 0..<Q:
  let
    T=nextInt()
    S=nextString()
  if T==1:
    let Sh=H(S)
    if not X.hasKey(Sh): X[Sh]=i
  else:
    Y.add((S,i))
    a[i]+=1
for (S,i) in Y:
  var
    h=0
    l=Q
  for j in 0..<S.len:
    h=(h*b+S[j].ord) mod m
    if X.hasKey(h): l.min=max(i,X[h])
  if l<Q: a[l]-=1
echo a.cumsummed.join("\n")