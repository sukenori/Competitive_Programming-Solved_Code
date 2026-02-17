include atcoder/header
let N=nextInt()
var c=newSeq[int](10^6+1)
for i in 1..N: c[nextInt()]+=1
let s=c.cumsummed
var a=0
for i in 1..10^6:
  a-=(1+c[i])*c[i] div 2
  for j in countup(i+i,10^6,i):
    a+=(j div i-1)*(s[j-1]-s[j-i-1])*c[i]
echo a