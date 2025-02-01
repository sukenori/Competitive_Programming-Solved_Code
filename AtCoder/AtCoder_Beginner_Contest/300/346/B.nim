include atcoder/header
let W,B=nextInt()
let k="wbwbwwbwbwbw".repeat(ceilDiv(W+B+12,12))
for i in 0..<12:
  let t=k[i..<W+B+i].toCountTable
  if t['w']==W and t['b']==B: echo "Yes"; quit()
echo "No"