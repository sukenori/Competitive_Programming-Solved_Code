include atcoder/header
let N=nextInt()
let H=newSeqWith(N,nextInt())
for i,Hi in H:
  if Hi>H[0]: echo i+1; quit()
echo -1