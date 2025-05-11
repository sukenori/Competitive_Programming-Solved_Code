include atcoder/header
import atcoder/modint
type mint=modint998244353
let A,B,C,D=nextInt()
var
  n=1.mint
  f=[(0,1.mint)].toTable
for i in 1..A+B+C+D: n*=i; f[i]=n
var a=0.mint
for i in A+1..A+C+1:
  a+=f[(i-1)+B]/f[i-1]/f[B]*f[A+C-(i-1)+(D-1)]/f[A+C-(i-1)]/f[D-1]
echo a