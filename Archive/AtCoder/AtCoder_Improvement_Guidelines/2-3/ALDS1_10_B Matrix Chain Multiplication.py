n=int(input())
r,c=[0]*n,[0]*n
for i in range(n): r[i],c[i]=map(int,input().split())
dp=[[0]*n for i in range(n)]
for d in range(1,n):
    for s in range(n-d):
        g=s+d
        dp[s][g]=min(dp[s][m]+dp[m+1][g]+r[s]*c[m]*c[g] for m in range(s,g))
print(dp[0][-1])