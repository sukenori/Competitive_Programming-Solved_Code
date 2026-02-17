n,k=map(int,input().split())
import math
dp=[[0]*(n+1) for i in range(int(math.log(k,2))+1)]
for i in range(n+1):
    dp[0][i]=i-sum(map(int,list(str(i))))
for i in range(len(dp)-1):
    for j in range(n+1):
        dp[i+1][j]=dp[i][dp[i][j]]
for i in range(1,n+1):
    m=i
    for j,_ in enumerate(bin(k)[2:][::-1]):
        if _=="1": m=dp[j][m]
    print(m)