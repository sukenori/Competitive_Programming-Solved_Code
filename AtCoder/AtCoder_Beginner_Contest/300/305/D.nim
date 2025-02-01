include atcoder/extra/header/chaemon_header
N:=nextInt()
A:=Seq[N:nextInt()]
s:=Seq[N:0]
for i in 1..<N:
  if i%2==0: s[i]=A[i]-A[i-1]
  s[i]+=s[i-1]
for _ in 1..nextInt():
  let l,r=nextInt()
  proc f(t:int):int=
    it:=A.lowerBound(t)
    result=s[max(it-1,0)]
    if it%2==0: result+=t-A[max(it-1,0)]
  echo f(r)-f(l)