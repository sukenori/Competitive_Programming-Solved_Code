include atcoder/header
let N,M=nextInt()
import atcoder/extra/structure/set_map
var
  P,Y=newSeq[int](M)
  c=newSeqWith(N+1,newSeq[int]())
  t:Table[(int,int),int]
for i in 1..M:
  let Pi,Yi=nextInt(); P[i]=Pi; Y[i]=Yi
  c[Pi].add(Yi)
for i,ci in c:
  for j,cj in ci.sorted: t[(i,cj)]=j+1
for i in 1..M:
  echo "0".repeat(6-(($P[i]).len))&($P[i])&"0".repeat(6-(($t[(P[i],Y[i])]).len))&($t[(P[i],Y[i])])