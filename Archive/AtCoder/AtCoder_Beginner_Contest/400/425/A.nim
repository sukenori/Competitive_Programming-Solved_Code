include atcoder/header
let N=nextInt()
echo (1..N).toSeq.mapIt((-1)^it*it^3).sum