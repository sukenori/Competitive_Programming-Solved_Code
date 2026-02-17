include atcoder/header
let N=nextInt()
var a:string
var i=1; while i^3<=N: 
  let s = $(i^3)
  if s==s.reversed: a=s
  i+=1
echo a