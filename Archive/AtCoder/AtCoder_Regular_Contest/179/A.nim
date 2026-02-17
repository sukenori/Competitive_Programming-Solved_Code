include atcoder/header
let N,K=nextInt()
var A=newSeqWith(N,nextInt())
if K<=0 and K<=A.sum:
  echo "Yes\n"&A.sorted(Descending).join(" ")
elif 0<K:
  echo "Yes\n"&A.sorted.join(" ")
else: echo "No"