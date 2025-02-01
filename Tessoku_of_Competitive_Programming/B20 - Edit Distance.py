s=input(); t=input()
dp=[[0]*(len(s)+1) for i in range(len(t)+1)]
for i in range(1,len(t)+1):
    for j in range(1,len(s)+1):
        dp[i][0]=i; dp[0][j]=j
        dp[i][j]=min(dp[i][j-1]+1,dp[i-1][j]+1,dp[i-1][j-1]+1)
        if s[j-1]==t[i-1]:
            dp[i][j]=min(dp[i-1][j-1],dp[i][j])
print(dp[-1][-1])