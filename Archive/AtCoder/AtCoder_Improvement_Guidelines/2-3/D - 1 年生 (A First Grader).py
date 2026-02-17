n,a0,*a,r=map(int,open(0).read().split())
xdp=[0]*21; xdp[a0]=1
for ai in a:
    dp=[0]*21
    for j in range(21):
        if j-ai>=0: dp[j-ai]+=xdp[j]
        if j+ai<=20: dp[j+ai]+=xdp[j]
    xdp=dp
print(dp[r])