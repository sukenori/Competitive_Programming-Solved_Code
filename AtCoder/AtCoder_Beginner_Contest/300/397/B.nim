include atcoder/header
import deques
var
  S=nextString().toDeque
  p:char
  a=0
while S.len>0:
  p=S.popFirst
  if p=='i':
    if S.peekFirst=='i': a+=1
    elif S.len==0: a+=1
    else: S.popFirst
  else: a+=1
echo a