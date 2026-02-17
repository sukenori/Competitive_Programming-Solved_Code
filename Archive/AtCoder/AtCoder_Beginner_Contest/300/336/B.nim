include atcoder/extra/header/chaemon_header
N:=nextInt()
for i in 0..(10^12).float.log2.int:
  if ((N shr i)and 1).bool: echo i; quit()