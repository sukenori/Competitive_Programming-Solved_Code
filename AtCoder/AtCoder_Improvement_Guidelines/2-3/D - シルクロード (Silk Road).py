n,m,*o=map(int,open(0).read().split())
dp=[0]+[1000*1000*1000]*n
for c in o[n:]:
    for i in range(n)[::-1]: dp[i+1]=min(dp[i+1],dp[i]+o[i]*c)
print(dp[n])