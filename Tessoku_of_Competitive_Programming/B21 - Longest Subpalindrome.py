n=int(input())
s="0"+input()+"0"
dp=[[0]*(n+2) for i in range(n+2)]
for i in range(1,n+1): dp[i][i]=1
for l in range(2,n+1):
    for i in range(1,n-l+2):
        dp[i][i+l-1]=max(dp[i][i+l-2],dp[i+1][i+l-1],(dp[i+1][i+l-2]+2)*(s[i]==s[i+l-1]))
print(dp[1][n])