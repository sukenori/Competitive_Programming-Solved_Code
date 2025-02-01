n=int(input())
xy=[[0,0]]; xy+=[list(map(int,input().split())) for i in range(n)]
dp=[[(2*1000**2)**0.5*15]*(n+1) for i in range(1<<n)]; dp[1][1]=0
for i in range(1,1<<n):
    for j in range(1,n+1):
        for k in range(1,n+1):
            dp[i|(1<<(j-1))][j]=min(dp[i|(1<<(j-1))][j],dp[i][k]+((xy[j][0]-xy[k][0])**2+(xy[j][1]-xy[k][1])**2)**0.5)
print(dp[-1][1])