n=int(input())
a=[0]+list(map(int,input().split()))
b=[0]+list(map(int,input().split()))+[101]
dp=[100*100000]*(n+2); dp[1]=0
for i in range(n):
    dp[i+1]=min(dp[i+1],dp[i]+a[i])
    dp[i+2]=min(dp[i+2],dp[i]+b[i])
print(dp[n])