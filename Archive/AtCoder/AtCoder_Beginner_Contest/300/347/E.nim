include atcoder/header
let N,Q=nextInt()
let x=newSeqWith(Q,nextInt())
var s:HashSet[int]
var c= @[0]
var b:Table[int,int]
var t:Table[(int,int),int]
for i in 0..<Q:
  if x[i] in s:
    s.excl(x[i])
    t[(b[x[i]],i-1)]=x[i]
    b.del(x[i])
  else:
    s.incl(x[i])
    b[x[i]]=i
  c.add(s.len)
for k,v in b.pairs: t[(v,Q-1)]=k
c=c.cumsummed
var A=newSeqWith(N,0)
for k,v in t: A[v-1]+=c[k[1]+1]-c[k[0]]
echo A.join(" ")