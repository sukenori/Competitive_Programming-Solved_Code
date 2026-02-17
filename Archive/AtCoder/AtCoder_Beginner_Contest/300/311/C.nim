include atcoder/extra/header/chaemon_header
N:=nextInt()
A := @[0]&Seq[N:nextInt()]
var s:OrderedSet[int]; i:=1
while true:
  s.incl(i)
  if A[i] in s: break
  else: i=A[i]
a:=s.toSeq; a=a[a.find(A[i])..^1]
echo a.len,'\n',a.join(" ")