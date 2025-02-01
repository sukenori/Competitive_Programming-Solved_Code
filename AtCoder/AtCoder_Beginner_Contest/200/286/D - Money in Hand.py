n,x=map(int,input().split())
c=[]; s=0
for i in range(n):
    a,b=map(int,input().split())
    c+=[a]*b
    s+=a*b
dp=[[0]*(x+1) for i in range(len(c)+1)]
dp[0][0]=1
for i in range(1,len(c)+1):
    for j in range(x+1):
        if dp[i-1][j]==1:
            dp[i][j]=1
            if j+c[i-1]<=x: dp[i][j+c[i-1]]=1
if dp[len(c)][x]==1: print("Yes")
else: print("No")