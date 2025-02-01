include atcoder/header
let N,X=nextInt()
var A,P,B,Q=newSeq[int](N)
for i in 0..<N:
  let Ai,Pi,Bi,Qi=nextInt()
  A[i]=Ai; P[i]=Pi; B[i]=Bi; Q[i]=Qi
var t=[(0,int.inf)].toTable
for i in 0..<N:
  var nt:Table[int,int]
  for k,v in t:
    var j=0; while k+P[i]*j<=X:
      var k=0; while k+P[i]*j+Q[i]*k<=X:
        if j>0 or k>0: nt[k+P[i]*j+Q[i]*k]=min(v,A[i]*j+B[i]*k)
        k+=1
      j+=1
  t=nt
echo t.values.toSeq.max