n,l=map(int,input().split())
k=int(input())
a=[0]+list(map(int,input().split()))
dp=[[0]*(n+1) for i in range(n+1)]; dp[0][0]=l
for i in range(1,n+1):
    for j in range(1,n+1):
        if a[j]>dp[i-1][j-1]:
            dp[i][j]=max(dp[i-1][j],min(a[j]-dp[i-1][j-1],l-a[j]))
        elif dp[i-1][j-1]>l-a[j]:
            dp[i][j]=max(dp[i-1][j],min(dp[i-1][j-1]-(l-a[j]),l-a[j]))
print(dp)
print(dp[n][k])