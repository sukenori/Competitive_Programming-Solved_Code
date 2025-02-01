n,m=map(int,input().split())
dp=[[101]*(1<<n) for i in range(m+1)]; dp[0][0]=0
for i in range(1,m+1):
    a=int(input().replace(" ",""),2)
    for s in range(1<<n):
        dp[i][s]=min(dp[i][s],dp[i-1][s])
        dp[i][s|a]=min(dp[i][s|a],dp[i-1][s]+1)
print([dp[m][-1],-1][dp[m][-1]>100])