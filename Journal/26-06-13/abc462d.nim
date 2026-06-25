include "/workspaces/AtCoder-Nim/.Library/.Template/Template.nim"
let N,D=int.input
var t=Seq[10^6+2:0]
for i in 0..<N:
  let S,T=int.input
  if T-S>=D:
    t[S]+=1; t[T-D+1]-=1
t=t.cumsummed
var a=0
for i in 1..10^6:
  a+=(1+(t[i]-1))*(t[i]-1) div 2
echo a