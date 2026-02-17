include atcoder/header
let XA,YA,XB,YB,XC,YC=nextInt()
var a,pX,pY=0
if XC!=XB:
  a+=abs(XC-XB)
  pX=abs(XB-(XC>XB).int+(XC<XB).int-XA)+abs(YB-YA)+(YB==YA and ((XB<XA and XB<XC) or (XA<XB and XC<XB))).int*2
if YC!=YB:
  a+=abs(YC-YB)
  pY=abs(XB-XA)+(XB==XA and ((YB<YA and YB<YC) or (YA<YB and YC<YB))).int*2+abs(YB-(YC>YB).int+(YC<YB).int-YA)
if pX>0 and pY>0: a+=min(pX,pY)+2
elif pX+pY>0: a+=max(pX,pY)
echo a