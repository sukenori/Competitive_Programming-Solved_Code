n=int(input())
a=[0]+list(map(int,input().split()))
b=[0]+list(map(int,input().split()))
dp=[-150*100000]*(n+1); dp[1]=0
for i in range(1,n):
    dp[a[i]]=max(dp[a[i]],dp[i]+100)
    dp[b[i]]=max(dp[b[i]],dp[i]+150)
print(dp[n])