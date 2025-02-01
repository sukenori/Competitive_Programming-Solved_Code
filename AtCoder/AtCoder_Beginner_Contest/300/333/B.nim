include atcoder/extra/header/chaemon_header
S:=nextString()
T:=nextString()
proc d(i,j:char):int=
  result=min([abs(i-j),abs(i+5-j),abs(i-(j+5))])
echo if d(S[0],S[1])==d(T[0],T[1]): "Yes" else: "No"