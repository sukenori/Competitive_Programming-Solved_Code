include atcoder/header
var c=0.repeat(100)
let Q=nextInt()
for _ in 1..Q:
  let q=nextInt()
  if q==1:
    let x=nextInt()
    c.add(x)
  else:
    echo c.pop