n,m,*c=map(int,open(0).read().split())
dp=[0]+[n*m]*n
for i in range(m):
    for j in range(min(c[i],n+1),n+1):
        dp[j]=min(dp[j],dp[j-c[i]]+1)
print(dp[n])