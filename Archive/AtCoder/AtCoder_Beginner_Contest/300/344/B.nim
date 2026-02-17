include atcoder/header
var A:seq[int]
while true:
  let Ai=nextInt()
  A.add(Ai)
  if Ai==0: break
echo A.reversed.join("\n")