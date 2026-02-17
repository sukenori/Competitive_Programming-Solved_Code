include atcoder/extra/header/chaemon_header
let HA,WA=nextInt()
A:=Seq[HA:nextString()]
let HB,WB=nextInt()
B:=Seq[HB:nextString()]
let HX,WX=nextInt()
X:=Seq[HX:nextString()]
dH:=max(HA,HB); dW:=max(WA,WB)
HC:=HX+(dH-1)*2; WC:=WX+(dW-1)*2
iterator Ai():seq[seq[char]]=
  for i in 0..<dH-1+HX:
    for j in 0..<dW-1+WX:
      C:=Seq[HC,WC:'.']
      for k in 0..<HA:
        for l in 0..<WA:
          if A[k][l]=='#': C[i+k][j+l]='#'
      yield C
iterator Bi():seq[seq[char]]=
  for i in 0..<dH-1+HX:
    for j in 0..<dW-1+WX:
      C:=Seq[HC,WC:'.']
      for k in 0..<HB:
        for l in 0..<WB:
          if B[k][l]=='#': C[i+k][j+l]='#'
      yield C
for Ai in Ai():
  for Bi in Bi():
    block b:
      for i in 0..<HC:
        for j in 0..<WC:
          if i in dH-1..<dH-1+HX and j in dW-1..<dW-1+WX:
            if ((Ai[i][j]=='#' or Bi[i][j]=='#') and X[i-dH+1][j-dW+1]=='.') or (Ai[i][j]=='.' and Bi[i][j]=='.' and X[i-dH+1][j-dW+1]=='#'): break b
          else:
            if Ai[i][j]=='#' or Bi[i][j]=='#': break b
      echo "Yes"; quit()
echo "No"