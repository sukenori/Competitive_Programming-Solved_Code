include atcoder/header
let N,M=nextInt()
var s:HashSet[(int,int)]
for _ in 1..M:
  let A,B=nextInt()-1
  s.incl((min(A,B),max(A,B)))
var
  p=(0..<N).toSeq
  a=int.inf
while true:
  var s1:HashSet[(int,int)]
  for i in 0..<N:
    s1.incl((min(p[i],p[(i+1) mod N]),max(p[i],p[(i+1) mod N])))
  a.min=(s-s1).len+(s1-s).len
  if N>=6:
    var s20,s21:HashSet[(int,int)]
    for i in 0..<3:
    s20.incl((min(p[i],p[(i+1) mod N]),max(p[i],p[(i+1) mod N])))
    for i in 3..<N:
    s21.incl((min(p[i],p[(i+1) mod N]),max(p[i],p[(i+1) mod N])))
  a.min=(s-s1).len+(s1-s).len
  if N==8:
  if not p.nextPermutation(): break