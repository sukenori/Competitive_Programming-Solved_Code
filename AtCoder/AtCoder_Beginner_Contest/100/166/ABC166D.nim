include atcoder/extra/header/chaemon_header
X:=nextInt()
s:=[0].toDeque
i:=1
while true:
  s.addFirst(-i^5); s.addLast(i^5)
  if i>1 and s[^1]-s[^2]>X: break
  i+=1
for A in 0..2*i<<1:
  B:=s.toSeq.lowerBound(s[A]-X)
  if (A-i)^5-(B-i)^5==X: echo A-i," ",B-i; quit()