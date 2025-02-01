n,k,*ab=map(int,open(0).read().split())
s=[-1]*n
for a,b in zip(ab[:-1:2],ab[1::2]): s[a-1]=b-1
dp=[[0]*3 for i in range(n)]
if s[0]==-1: dp[0][0]=dp[0][1]=dp[0][2]=1
else: dp[0][s[0]]=1
if s[1]==-1: dp[1][0]=dp[1][1]=dp[1][2]=sum(dp[0])
else: dp[1][s[1]]=sum(dp[0])
for i in range(2,n):
    p=sum(dp[i-1])
    for j in range(3):
        if s[i]==-1 or s[i]==j:
            if dp[i-1][j]!=0:
                dp[i][j]=p-dp[i-2][j]
                dp[i-1][j]-=dp[i-2][j]
            else: dp[i][j]=p
print(sum(dp[-1])%10000)