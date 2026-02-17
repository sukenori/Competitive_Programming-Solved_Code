include atcoder/header
let L,R=nextString()
var a=0
for i in L.len..<R.len:
  for j in 1..9: a+=j^(i-1)
for i in 1..($L[0]).parseInt:
  var ai=1
  for j in 1..<L.len:
    ai*=[i-1,($L[j]).parseInt].min+1
  a-=ai
if (1..<L.len).toSeq.allIt(L[it]<L[0]): a+=1 
for i in 1..($R[0]).parseInt:
  var ai=1
  for j in 1..<R.len:
    ai*=[i-1,($R[j]).parseInt].min+1
  a+=ai
echo a