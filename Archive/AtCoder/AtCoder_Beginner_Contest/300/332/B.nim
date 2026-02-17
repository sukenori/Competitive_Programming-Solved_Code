include atcoder/extra/header/chaemon_header
let K,G,M=nextInt()
g:=0; m:=0
for _ in 1..K:
  if g==G: g=0
  elif m==0: m=M
  else:
    lm:=m
    m=max(lm-(G-g),0)
    g+=lm-m
echo g," ",m