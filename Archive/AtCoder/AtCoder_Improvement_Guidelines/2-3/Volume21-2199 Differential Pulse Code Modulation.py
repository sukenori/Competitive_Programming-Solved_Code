while 1:
    n,m=map(int,input().split())
    if n==m==0: break
    c=[]; x=[]
    for i in range(m): c+=[int(input())]
    for i in range(n): x+=[int(input())]
    xdp=[128**2*20000]*256; xdp[128]=0
    for xi in x:
        dp=[128**2*20000]*256
        for ci in c:
            for i in range(256):
                ni=i+ci
                if ni<0: ni=0
                if ni>255: ni=255
                dp[ni]=min(dp[ni],xdp[i]+(xi-(ni))**2)
        xdp=dp
    print(min(dp))