include atcoder/header
let T=nextInt()
var TSX,TSY,TGX,TGY,ASX,ASY,AGX,AGY,Td,Ad:float
proc d(t:float):float=
  var TX,TY,AX,AY:float
  if TGX-TSX>=0:
    TX=min(TSX+(TGX-TSX)/Td*t,TGX)
  else:
    TX=max(TGX,TSX+(TGX-TSX)/Td*t)
  if TGY-TSY>=0:
    TY=min(TSY+(TGY-TSY)/Td*t,TGY)
  else:
    TY=max(TGY,TSY+(TGY-TSY)/Td*t)
  if AGX-ASX>=0:
    AX=min(ASX+(AGX-ASX)/Ad*t,AGX)
  else:
    AX=max(AGX,ASX+(AGX-ASX)/Ad*t)
  if AGY-ASY>=0:
    AY=min(ASY+(AGY-ASY)/Ad*t,AGY)
  else:
    AY=max(AGY,ASY+(AGY-ASY)/Ad*t)
  ((AX-TX)^2+(AY-TY)^2).sqrt
proc t(l,r:float):float=
  var
    l=l
    r=r
  while r-l>pow(10,-6.0):
    let
      ml=(l*2+r)/3
      mr=(l+r*2)/3
    if d(ml)>d(mr): l=ml
    else: r=mr
  return min(d(r),d(l))
for _ in 1..T:
  TSX=nextFloat()
  TSY=nextFloat()
  TGX=nextFloat()
  TGY=nextFloat()
  ASX=nextFloat()
  ASY=nextFloat()
  AGX=nextFloat()
  AGY=nextFloat()
  Td=((TGX-TSX)^2+(TGY-TSY)^2).sqrt
  Ad=((AGX-ASX)^2+(AGY-ASY)^2).sqrt
  echo min(t(0.0,min(Td,Ad)),t(min(Td,Ad),max(Td,Ad)))