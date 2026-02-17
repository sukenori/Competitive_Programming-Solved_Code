include atcoder/extra/header/chaemon_header
N:=nextInt()
S:=Seq[N:nextString()]
for i in 0..<N:
  for j in 0..<N:
    if i!=j and S[i]&S[j]==(S[i]&S[j]).reversed: echo "Yes"; quit()
echo "No"