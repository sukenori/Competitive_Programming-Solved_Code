n,*a=map(int,open(0).read().split())
a+=a
dp=[[0]*(n*2) for j in range(n*2)]
for i in range(n):
    dp[i+1][n-1+i]=a[i]
t=1
for i in range(n*2):
    for j in range(n*2)[::-1]:
        if t:
            if a[i]>a[j]: dp[i-1][j]=dp[i][j]
            else: dp[i][j-1]=dp[i][j]
        else:
            dp[i-1][j]=max(dp[i-1][j],dp[i][j]+a[i])
            dp[i][j-1]=max(dp[i][j-1],dp[i][j]+a[i])
        t=1-t
[print(i, dp[i][i]) for i in range(n)]
