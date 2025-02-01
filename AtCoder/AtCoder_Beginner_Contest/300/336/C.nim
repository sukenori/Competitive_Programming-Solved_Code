include atcoder/extra/header/chaemon_header
N:=nextInt()-1
var s:seq[int]
while N>0: s.insert(N%5*2,0); N//=5
echo if s.len==0: "0" else: s.join