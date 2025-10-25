include atcoder/header
let
  N,K=nextInt()
  S=nextString()
var c:Table[string,int]
for i in 0..<N-K+1:
  if c.hasKeyOrPut(S[i..<i+K],1): c[S[i..<i+K]]+=1
let x=c.values.toSeq.max
echo x
echo c.pairs.toSeq.filterIt(it[1]==x).mapIt(it[0]).sorted.join(" ")