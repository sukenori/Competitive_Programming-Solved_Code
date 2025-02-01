n=int(input())
dp=[[0]*(n+1) for i in range(n+1)]
dp[n]=[0]+list(map(int,input().split()))
for i in reversed(range(1,n)):
    for j in range(1,i+1):
        if i%2==1: dp[i][j]=max(dp[i+1][j:j+2])
        else: dp[i][j]=min(dp[i+1][j:j+2])
print(dp[1][1])