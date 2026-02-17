include atcoder/header
let a,b,C=nextInt()
import bitops
let c=C.countSetBits
if c>a+b: echo -1; quit()
var e,x,y:int
e=(a+b-c) div 2; x=a-e; y=b-e
var X,Y=0
for i in 0..<60:
  if (C shr i and 1)==1:
    if x>0: X+=1 shl i; x-=1
    else: Y+=1 shl i; y-=1
  else:
    if e>0: X+=1 shl i; Y+=1 shl i; e-=1
    elif x==0 and y==0: break
if x>0 or y>0 or e>0: echo -1
else: echo X," ",Y