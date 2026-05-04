include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N=int.input
var
  A,B=Seq[N:int]
  t=Seq[10:seq[int]]
for i in 0..<N:
  let Ai,Bi=int.input
  A[i]=Ai; B[i]=Bi
  t[Ai-1].add(Bi-1)
let
  M=int.input
  S=Seq[M:string.input]
var c=Seq[10:HashSet[char]]
for Si in S:
  for tj in t[Si.len-1]: c[Si.len-1].incl(Si[tj])
for Si in S:
  var a=true
  if Si.len!=N: a=false
  for j,Sj in Si:
    if Sj notin c[A[j]-1]: a=false
  a.asYesNo
