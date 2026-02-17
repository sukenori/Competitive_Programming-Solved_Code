include atcoder/header
proc c(K,i,j:int):char=
  if K==0 : return '#'
  elif [i,j].allIt(it in 3^(K-1)..<3^(K-1)*2):
    return '.'
  else: return c(K-1,i mod 3^(K-1),j mod 3^(K-1))
let N=nextInt()
for i in 0..<3^N:
  for j in 0..<3^N: stdout.write c(N,i,j)
  stdout.write "\n"