include atcoder/extra/header/chaemon_header
let N,S,M,L=nextInt()
a:=int.inf
for i in 0..100//6+1:
  for j in 0..100//8+1:
    for k in 0..100//12+1:
      if 6*i+8*j+12*k>=N: a.min=S*i+M*j+L*k
echo a