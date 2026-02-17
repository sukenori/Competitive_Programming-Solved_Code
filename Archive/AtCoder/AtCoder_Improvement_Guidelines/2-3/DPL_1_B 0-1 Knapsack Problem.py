N,W=map(int,input().split())
dp=[0]*(W+1)
for i in range(N):
    v,w=map(int,input().split())
    for j in range(W,min(w-1,W-1),-1):
        dp[j]=max(dp[j],dp[j-w]+v)
print(dp[W])