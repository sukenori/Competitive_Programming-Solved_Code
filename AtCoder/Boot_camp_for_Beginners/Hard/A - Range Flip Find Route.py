h,w=map(int,input().split())
s=[input() for i in range(h)]
dp=[[200]*w for i in range(h)]
dp[0][0]=(s[0][0]=="#")
for i in range(h):
    for j in range(w):
        if j<w-1:
            dp[i][j+1]=min(dp[i][j+1],dp[i][j]+(s[i][j]=="." and s[i][j+1]=="#"))
        if i<h-1:
            dp[i+1][j]=min(dp[i+1][j],dp[i][j]+(s[i][j]=="." and s[i+1][j]=="#"))
print(dp[-1][-1])