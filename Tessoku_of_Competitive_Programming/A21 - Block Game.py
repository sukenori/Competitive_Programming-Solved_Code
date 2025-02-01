n=int(input())
p=[0]*(n+2); a=[0]*(n+2)
for i in range(1,n+1):
    pi,ai=map(int,input().split())
    p[i]=pi; a[i]=ai
dp=[[0]*(n+2) for i in range(n+2)]
for i in range(1,n+1):
    for j in reversed(range(i,n+1)):
        dp[i][j]=max(dp[i-1][j]+a[i-1]*(i-1<=p[i-1]<=j),dp[i][j+1]+a[j+1]*(i<=p[j+1]<=j+1))
print(max([max(_) for _ in dp]))