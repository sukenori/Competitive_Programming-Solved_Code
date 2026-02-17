include atcoder/extra/header/chaemon_header
N:=nextString(); D:=N.len
a:=0
for s in 1..9*14:
  dp:=Seq[D+1,s+1,s,2:0]
  dp[0][0][0][1]=1
  for d in 0..<D:
    Nd:=N[d]-'0'
    for i in 0..s:
      for j in 0..<s:
        for f in 0..1:
          for t in 0..9:
            if i+t>s: continue
            if f.bool and Nd<t: continue
            dp[d+1][i+t][(j*10+t)%s][(f.bool and Nd==t).int]+=dp[d][i][j][f]
  a+=dp[D][s][0][0]+dp[D][s][0][1]
echo a