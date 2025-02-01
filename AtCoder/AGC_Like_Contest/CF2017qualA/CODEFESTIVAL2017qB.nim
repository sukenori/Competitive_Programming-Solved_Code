include atcoder/header
let N,M,K=nextInt()
for i in 0..N:
  for j in 0..M:
    if i*M+j*N-i*j*2==K: echo "Yes"; quit()
echo "No"