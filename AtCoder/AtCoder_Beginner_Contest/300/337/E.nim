include atcoder/extra/header/chaemon_header
N:=nextInt()
M:=N.float.log2.ceil.int
echo M
A:=Seq[M,0:int]
import atcoder/extra/other/bitutils
for i in 0..<N:
  for j in 0..<M:
    if i[j].bool: A[j].add(i+1)
for i in 0..<M:
  echo (@[A[i].len]&A[i]).join(" ")
S:=nextString()
echo fromBin[int]("0b"&(S.reversed.join))+1