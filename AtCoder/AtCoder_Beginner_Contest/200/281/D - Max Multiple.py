n,k,d=map(int,input().split())
a=list(map(int,input().split()))
dp=[[-1]*d for i in range(k+1)]
dp[0][0]=0
print(dp)
for i in range(1,k+1):
    for j in range(d):
        dp[i][j]=dp[i-1][j]
        print(dp)
        if dp[i][j]!=-1: dp[i][(j+a[j])%d]=max(dp[i][(j+a[j])%d],dp[i][j]+a[j])
print(dp)
print(max(dp[k]))