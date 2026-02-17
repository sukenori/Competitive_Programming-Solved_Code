include atcoder/header
let N=nextInt()
var q,r=newSeq[int](N)
for i in 0..<N:
  let qi,ri=nextInt()
  q[i]=qi; r[i]=ri
for _ in 1..nextInt():
  let t,d=nextInt()
  echo q[t-1]*((d div q[t-1])+(d mod q[t-1]>r[t-1]).int)+r[t-1]