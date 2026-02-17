def lcs(x,y):
    dp=[0]*(len(x)+1)
    for yj in y:
        xdp=dp[:]
        for k,xk in enumerate(x,1):
            if xk==yj: dp[k]=xdp[k-1]+1
            if dp[k-1]>dp[k]: dp[k]=dp[k-1]
    print(dp[-1])
for i in range(int(input())):
    lcs(input(),input())