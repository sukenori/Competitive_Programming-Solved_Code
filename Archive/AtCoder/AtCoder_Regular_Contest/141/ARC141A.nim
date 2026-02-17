include atcoder/extra/header/chaemon_header
for _ in 1..nextInt():
  N:=nextString()
  a:=10^(N.len-1)-1
  for i in 1..N.len//2:
    if N.len%i==0:
      if N[0..<i].repeat(N.len//i)<=N:
        a.max=N[0..<i].repeat(N.len//i).parseInt
      else:
        a.max=($(N[0..<i].parseInt-1)).repeat(N.len//i).parseInt
  echo a