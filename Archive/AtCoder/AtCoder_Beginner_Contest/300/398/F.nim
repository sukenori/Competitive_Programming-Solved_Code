include atcoder/header
let S=nextString()
proc m(s:string):seq[int] =
  let
    t=s.join("#")
    n=t.len
  echo t
  var
    r=newSeqWith(n,1)
    c,m=0
  for i in 0..<n:
    if i<m: r[i]=r[c-(i-c)]
    while 0<=i-r[i] and i+r[i]<n and t[i-r[i]]==t[i+r[i]]:
      r[i]+=1
    if i+r[i]>m: c=i; m=i+r[i]
  return r#(0..<s.len).mapIt(r[it*2+1])

echo m(S)