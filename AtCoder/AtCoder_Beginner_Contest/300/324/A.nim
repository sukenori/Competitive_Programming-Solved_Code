include atcoder/header
let N=nextInt()
var A:HashSet[int]
for _ in 1..N: A.incl(nextInt())
echo (if A.len==1: "Yes" else: "No")