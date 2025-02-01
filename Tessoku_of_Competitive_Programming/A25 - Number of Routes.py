h,w=map(int,input().split())
c=["."*(w+1)]
for i in range(h): c.append("."+input())
dp=[[0]*(w+1) for i in range(h+1)]; dp[1][1]=1
for i in range(1,h+1):
    for j in range(1,w+1):
        if i==j==1 or c[i][j]=="#": continue
        else: dp[i][j]=dp[i-1][j]+dp[i][j-1]
print(dp[h][w])