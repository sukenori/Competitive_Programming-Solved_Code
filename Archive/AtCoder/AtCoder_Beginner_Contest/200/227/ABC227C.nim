include atcoder/extra/header/chaemon_header
N:=nextInt()
a:=0
for A in 1..N.float.cbrt.toInt:
  for B in A..(N/A).sqrt.toInt:
    a+=N//(A*B)-(B-1)
echo a