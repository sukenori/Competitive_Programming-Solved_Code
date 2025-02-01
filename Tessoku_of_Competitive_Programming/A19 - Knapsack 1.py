n,s=map(int,input().split())
dp=[[0]+[-1]*s]
for _ in range(n):
    w,v=map(int,input().split())
    dp+=[dp[-1].copy()]
    for i in range(s+1):
        if i-w>=0 and dp[-2][i-w]!=-1:
            dp[-1][i]=max(dp[-2][i],dp[-2][i-w]+v)
print(max(dp[-1]))