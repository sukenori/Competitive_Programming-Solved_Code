include atcoder/header
let N,X,Y=nextInt()
var s= @[(0,X,0,Y)]
for _ in 1..N:
  let
    C=nextString()
    A,B=nextInt()
  var ns:seq[(int,int,int,int)]
  for (lx,rx,ly,ry) in s:
    if C=="X":
      if rx<=A: ns.add((lx,rx,ly-B,ry-B))
      elif lx<A: ns.add((lx,A,ly-B,ry-B)); ns.add((A,rx,ly+B,ry+B))
      else: ns.add((lx,rx,ly+B,ry+B))
    else:
      if ry<=A: ns.add((lx-B,rx-B,ly,ry))
      elif ly<A: ns.add((lx-B,rx-B,ly,A)); ns.add((lx+B,rx+B,A,ry))
      else: ns.add((lx+B,rx+B,ly,ry))
  s=ns
let n=s.len
import atcoder/dsu
var d=initDSU(n)
for i in 0..<n-1:
  for j in i+1..<n:
    let
      (ilx,irx,ily,iry)=s[i]
      (jlx,jrx,jly,jry)=s[j]
    if (((irx==jlx or ilx==jrx) and ily<jry and iry>jly) or ((iry==jly or ily==jry) and ilx<jrx and irx>jlx)):
      d.merge(i,j)
var a=newSeq[int](d.groups.len)
for i,g in d.groups:
  for j in g:
    let (lx,rx,ly,ry)=s[j]
    a[i]+=(rx-lx)*(ry-ly)
echo a.len
echo a.sorted.join(" ")