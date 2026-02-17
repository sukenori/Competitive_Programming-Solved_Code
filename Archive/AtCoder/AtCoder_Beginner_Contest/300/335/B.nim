include atcoder/extra/header/chaemon_header
N:=nextInt()
s:=(0..N).toSeq
for i in [s,s,s].product.sorted:
  if i.sum<=N: echo i.join(" ")