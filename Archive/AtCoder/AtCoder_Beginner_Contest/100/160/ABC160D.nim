include atcoder/header
let N,X,Y=nextInt()
var a=newSeq[int](N)
for i in 1..<N:
  for j in i+1..N:
    a[min(j-i,abs(i-X)+1+abs(Y-j))]+=1
echo a[1..^1].join("\n")