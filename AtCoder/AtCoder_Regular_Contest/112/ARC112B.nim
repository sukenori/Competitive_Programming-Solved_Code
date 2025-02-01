include atcoder/header
var B,C=nextInt()
var c:int
var a=if B==0: 1 else:2
c=if B<=0: C else: C-1
a+=(c div 2)*2
a-=(if c>=2 and c mod 2==0: 1 else:0)
if B>=0: c=C
else: c=C-1; B= -B
if c div 2<B:
  a+=(c div 2)*2
  a-=(if c>=2 and c mod 2==0: 1 else:0)
elif B>0:
  a+=(B-1)*2+1
echo a