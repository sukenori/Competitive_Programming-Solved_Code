include atcoder/extra/header/chaemon_header
N:=nextInt()
S:=nextString()
a:=[""].toDeque
for Si in S:
  if Si=='(': a.addLast($Si)
  elif Si==')' and a.peekLast.startsWith('('): a.popLast
  else: a.peekLast &= $Si
echo a.toSeq.join