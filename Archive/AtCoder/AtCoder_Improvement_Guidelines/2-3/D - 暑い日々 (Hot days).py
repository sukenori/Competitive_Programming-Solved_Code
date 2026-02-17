[d,n],*o=[[*map(int,r.split())] for r in open(0)]
xdp={}
for t, in o[:d]:
    dp={}
    for a,b,c in o[d:]:
        if a<=t<=b:
            v=0
            for xc,xv in xdp.items(): v=max(v,xv+abs(xc-c))
            dp[c]=v
    xdp=dp
print(max(dp.values()))