include "/workspaces/AtCoder-Nim/.Library/template.nim"
let
  N = int.input
  A = Seq[N: int.input]
var
  sdiv7: Table[int, int]
  sdiv3: Table[int, int]
  a = 0
for i in 0 ..< N:
  if A[i] % 5 == 0: a += sdiv7.getOrDefault(A[i] // 5) * sdiv3.getOrDefault(A[i] // 5)
  if A[i] % 7 == 0: sdiv7.mgetOrPut(A[i] // 7) += 1
  if A[i] % 3 == 0: sdiv3.mgetOrPut(A[i] // 3) += 1
sdiv7.clear; sdiv3.clear
for i in (N-1..0,1):
  if A[i] % 5 == 0: a += sdiv7.getOrDefault(A[i] // 5) * sdiv3.getOrDefault(A[i] // 5)
  if A[i] % 7 == 0: sdiv7.mgetOrPut(A[i] // 7) += 1
  if A[i] % 3 == 0: sdiv3.mgetOrPut(A[i] // 3) += 1
echo a