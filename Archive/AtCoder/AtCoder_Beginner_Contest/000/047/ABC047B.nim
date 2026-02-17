include atcoder/extra/header/chaemon_header
let W,H,N=nextInt()
lW:=0; hW:=W; lH:=0; hH:=H
for _ in 1..N:
  let x,y,a=nextInt()
  case a:
    of 1: lW.max=x
    of 2: hW.min=x
    of 3: lH.max=y
    else: hH.min=y
echo max(0,hW-lW)*max(0,hH-lH)