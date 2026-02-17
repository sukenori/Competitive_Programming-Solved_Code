include atcoder/header
let N,C=nextInt()
var
  s,m,a=0
for i in 0..<N:
  s+=nextInt()
  if C>0:
    m.min=s
    a.max=s-m
  else:
    m.max=s
    a.min=s-m
echo if C>0: s+a*(C-1) else: s+a*(C-1)