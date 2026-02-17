include atcoder/header
let N=nextInt()
let S=nextString()
var s:HashSet[(int,int,int)]
for i in 0..<N-2:
  for d in 1..(N-(i+1)) div 2:
    s.incl((i,i+d,i+d*2))
let t=S.toCountTable
var a=if t.len==3: t.values.toSeq.foldl(a*b) else: 0
for (i,j,k) in s:
  if [S[i],S[j],S[k]].toHashSet.len==3: a-=1
echo a