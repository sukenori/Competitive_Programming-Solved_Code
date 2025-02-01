n,q=map(int,input().split())
dp=[list(map(int,input().split()))]
import math
for i in range(int(math.log(10**9,2))+1):
    dpi=[]
    for j in range(n):
        dpi.append(dp[-1][dp[-1][j]-1])
    dp.append(dpi)
for i in range(q):
    x,y=map(int,input().split())
    for j,_ in enumerate(bin(y)[2:][::-1]):
        if _=="1": x=dp[j][x-1]
    print(x)