n,s=map(int,input().split())
dp=[[0]+[10**9*100+1]*1000*100]
for _ in range(n):
    w,v=map(int,input().split())
    dp+=[dp[-1].copy()]
    for i in range(v,1000*100+1):
        dp[-1][i]=min(dp[-2][i],dp[-2][i-v]+w)
for i in reversed(range(1000*100+1)):
    if dp[-1][i]<=s:
        print(i)
        break