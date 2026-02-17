include atcoder/extra/header/chaemon_header
let N,M=nextInt()
S:=nextString()&"0"
p:=M; l:=0; a:=0
for Si in S:
  if Si=='1':
    if p>0: p-=1 else: l+=1
  if Si=='2': l+=1
  if Si=='0': a.max=l; l=0; p=M
echo a