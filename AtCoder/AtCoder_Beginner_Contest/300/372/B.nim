include atcoder/header
var
  M=nextInt()
  A=newSeq[int]()
while M>0:
  for i in countdown(10,0):
    if 3^i<=M: A.add(i); M-=3^i; break
echo A.len
echo A.join(" ")