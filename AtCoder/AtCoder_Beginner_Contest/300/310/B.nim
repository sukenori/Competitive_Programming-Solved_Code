include atcoder/extra/header/chaemon_header
let N,M=nextInt()
P:=Seq[N:int]
F:=Seq[N:HashSet[int]]
for i in 0..<N:
  P[i]=nextInt()
  C:=nextInt()
  for j in 0..<C: F[i].incl(nextInt())
a:=false
for i in 0..<N:
  for j in 0..<N:
    a=a or (P[i]>=P[j] and F[j]>=F[i] and (P[i]>P[j] or (F[j]-F[i]).len>0))
echo (if a: "Yes" else: "No")